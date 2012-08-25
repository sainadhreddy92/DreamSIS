class UsersController < ApplicationController
  
  def index
    @users = User.paginate :all, :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def profile
    return redirect_to choose_identity_path if @current_user.person.class == Person
    @person = @current_user.person
  end

  def update_profile
    @person = @current_user.person
    @person.validate_ready_to_rsvp = true if session[:profile_validations_required].to_s.include?("ready_to_rsvp")
    
    respond_to do |format|
      if @person.update_attributes(params[:person])
        flash[:notice] = "Thanks! We updated your profile."
        format.html { redirect_to(session[:return_to_after_profile] || root_path) && session[:return_to_after_profile] = nil }
      else
        format.html { render :action => "profile" }
      end
    end

  end

  def choose_identity
  end
  
  def update_identity
    new_identity = h(params[:identity].to_s)
    return redirect_to choose_identity_path unless %w(Student Volunteer).include?(new_identity)
    redirect_to @current_user.person.update_attribute(:type, new_identity) ? profile_path : choose_identity_path
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = "User was successfully created."
        format.html { redirect_to(@user) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    new_admin_value = @user.is_a?(PubcookieUser) ? params[:pubcookie_user][:admin] : params[:user][:admin]
    @user.admin = new_admin_value if @current_user && @current_user.admin?

    respond_to do |format|
      if @user.save
        flash[:notice] = "User was successfully updated."
        format.html { redirect_to(user_path(@user)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def auto_complete_for_user_login
    @users = User.find(:all, 
                          :conditions => ["LOWER(login) LIKE :login", 
                                          {:login => "%#{params[:user][:login].downcase}%"}])
    respond_to do |format|
      format.js
    end
  end

  protected 
  
  def check_authorization
    unless @current_user && @current_user.admin?
      render_error("You are not allowed to access that page.")
    end
  end

end