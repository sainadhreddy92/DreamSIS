desc "Generate some random participants for testing"
task :generate_participants => :environment do
  puts "Please specify how many participants you'd like to create (N=XXX)" and return unless ENV['N']
  STDOUT.sync = true
  
  lastnames = %w[Girma Singh Warf Padilla Mendoza Singh Abate Singh Singh Mendoza Kennedy Lemma Minhas Sra Guy Sandoval Flores Mamay Marroquin Elmore Cheng Hines Hungi Lek Rivera Eang Kenan Rasmussen Lagonoy Davis Campbell Le Luton Bosley Laoang Anderson Gunn Bautista Haile Saechao Ramos Du Santos Mar Galapon Vicente Madeja Daniels Yoshioka Pham Ali Raabe Reilly Rodriguez Williams Kaur Meneses Sadang Chuong Rengo Ramsey Le Bui Hua Tamiru Chau O'francia Zhang Huynh Abaata Ammons Anderson Chey Chin Choi Derseh Delapena Do Handy Hassan Heck Hennig Hirsch Horst Imbert Johanson Jones Keyes Kifle Kon Li Liang Lim Mariano McCarthy Miller Moalim Mohamed Lam Nguyen Nguyen Quenguyen Pham Ranken  Saeteurn Sherpa Tran Tran Wu Ung Falkoushi Abdullahi Arteaga Bates Burns Casillas Choi Dumlao Fahiye Keny Lemautu Mendoza Moua Omar Plata-Daling Roberts Sim Tarimel Tibbits Ahmed Alcantara Aguilar Barron Bass Bautista Castro Curnutt Hassan Hawkins Ingraham Isaia Orbino Peckenpaugh Saketa Sheikhali Snyder Taumua Vikovic Walker Yusuf Gulhaugen Camacho Morey Magnusson Smith  Hodges Ordonez Flores Cunan Hodge Ngu Hassen Marshall Pantaleon Bautista Henderson Angeles Dagdag Huynh Stariha DeMeritt-Herman Tun Hoang Lowe-Shields Prince Crandell Nguyen White Cao Dickerson Tran  Nair Chisholm  Diriye Chhen Elmi Maharie Matveyeva  Pencheva Curevac Williams Woldemariam  Foto Men Moravong Enguerra  Zamora  Johnson Farris Bester Roberts  Samuel Keo Leon  Russo  Montufar  Kaur Ali Abegaz Mohamud  Sutu-Lopez Carmichael  Fleurine Castaneda Yohannes Benton Osman Mohamed Sutton Monkah Busroe  Gonzalez Ali Omerovic Martin  Poindexter  Hawez Luna Aga Alcala Asker Bruan Chang Combs Duckworth Exkano Facundo Fataftah Femiano-Garcia Ford Galaviz Galaviz Gutierrez Halldeal Hansen Hassan Hefa Hernandez Horvath Jacob Kiflemariam Le Leveron Lindsey Matewos McCraney Montgomery Montgomery Mulubirhan Ngo Nguyen Nguyen Nguyen Nguyen Obieroma Padilla Pierson Prince Puentes Puyat Rayray Rogers Rosario Shaibi Singh Sundquist  Taylor Tran Velasco Walkingchild Wetzel Williams Asuogu Berg Calamiong Calamiong Chambers Felicitas Flores Fotualii Hedayat Herrera Jimenez Lopez Mills Nicholson Ortiz-Roman Reader Roa-Moncada Roman Sereke Staples Stewart Torres Abdi Adam  Ahmed  Ali Anderson  Atkinson III Ayala  Cazacopol Chhen Cosic Custic De los Reyes Diriye Duot Elmi Felder  Frazer Goundar Gulaliyeva Haggard Ibrahim Idris Jones  Khurshudava Lee  Long Malath Malath  Maung Mersha Murillo Nsengwa Ogbe  Pearsall Rogacki Stojcic Tesfai Tolo Tolo Tupuola Webb Lessor Le Barajas Beyene Boggs Breaux Brown Camarillo Dow Enriquez Fantin Fola Haile Hassan Hudson Kelly Kimani Kong LaBoyne Lemma Locke Martinez Maynard Metz Metzger Moua Reyes Sanchez Shaffer Shiferaw Sousa Steblovskaya Taylor Thao Tyo Viray Winch Valdez-Garcia Eiselstein Sra Dockter Aguilar-Pineda Angel-Tuxpan Byers Eang Ehrs Ekberg Esparza Facelo Hefley Ibrahim Leon Lopez Martinez Neubauer Nguyen Ohl Osorio Pal Roe Rogulj Saeteurn Samson Shanle Terrazas Toles Torres Lucatero Van Vargas Vazquez Villalovos Acosta Apostol Auerd Bui Castillo Chan Chan Chim Dacuan Dang Ellis Eng Fields Fisher Hampton Hay Hendricks Hill Nguyen Hughes Huynh Jackson Johnson Jubane Kaur  Korodua Ladrillono Le Lee Leung Li Li Moxley Murtaugh Naval Nguyen Phan Phuong-Thao Le Poza Quigtar Recania Reyes Romero Saechao Saelee Scheeler Sison Somsack Sounthala Sta-Maria Tran Trowbridge Untalan Wu Abdirahman Al-Jabery Anderson Barron Calderon Castro Cortes Del Toro Graham Huynh Jefferson Jimenez Kuhn Logman McFarland Nelson Okimow Re Rhodes Zekic Alfred Andebrhan Berrios Buyco Chen Chhay Diwag Garcia Harada Ibrahim Lee Luong MacAlino Mak Mar Mathwig Mohammed Nguyen Nwude Onevathana Paderes Paradeza Peralta Purvis Reid Richards Rivers Robinson Rota Saechao Saechao Saeteurn Severson Sims Singh Spears Stone Tan Toms Tran Tu Whitehead-Tyson Wise-Price Youngblood Twyman Hewitt Knollmeyer Lukic Mayers Willanms Garcia Hay Henry Lemmon Moores Harris Ibrahim Johnson Mansour Mc Kinley Men Mujic Muna Nam Omar Parra Patrick Phan Tolentino Tong Toon Uhila Vasquez Zeng Carreon Cisneros George Gutierrez Rogers Rogers Saran Savini Tran Valentine Gasolo Sanchez Tyge alex kon Johanson Logman McLeod Mekonnen Nammathao Nguyen Quezada Sy Barlow Farah Ford Lee Farah Benedictus Le Mohamed Ali Castillo Haile Abubakar Agulto Alejandre Altamirano Lu Nguyen Wright Ramsdell Lanier De Vera Fidler Hailu Santos Hassan Fernandez Deng Hang Liu Gee Lai Nera Barajas Biros Dacus Davis  Flores Galgalo  Taylor-Kamara Bui Nguyen Mohamed Chin Berhe Davis Lanza Anderson Komotios-Newton Christensen Adan Bonds Jourdan Nelson Gitau Dacuan Tang Giddens Kittavong Baker Garcia Barnes Nong Lam Huang Le Saechin Tep Ballesteros Thavongsa Thomas Thompson Du Thomas Thomson Tolo Masaniai Naval Torres Tran Tran Chan Valencia Bruno Valencia Bruno Bray Valencia Tinoco Vigil Vu Bucher Wadhwa Walker Ward Washington Lay Wawrzyniak Wetzel Willis Wilson Aphaymany Wilson Wood  Younger Hassen Hopkins Kelly Idos Keo McCray Lagahit Le Vidrio Love Luna  Ly Macin Quintero Lopez Martinez Melake Mesfin Modica Mohamed Mohamud Napat Nguyen Nguyen Ogbaslassie Padilla Hernandez Patrick Perez Rodriguez Pham Pham Reyes Reyes Ross Soliven Sommers Soria Nur Eang Sra Johnson Campos Kharbanda Bishaw Moran Robbins Lewis Jimenez Saechao Le Mortenson Floodeen Remolana Melchior Ho Bell Wu Wilson Gondo Perez Martinez Cham Kalezie Nguyen Nguyen Huynh Sun Chuong Phan Mac Kazi Bloedel Milendez Cu Holmes Ragutero Redempter Kin Subedi Ramaj Perez Kaur Nurjaman Singh Corado Hem Lee Mao Kim Lim Legaspi Hale Kurich Barre Mudd Perez Jean-Pierre Maldonado Collier Ochoa Nguyen Magana Castillo Ali Yusuf Wondason Tursic Hassan Phomma Jama Sanchez Enriquez Singh Fuavai Rosales Gastelum Soeung Nguyen Sanchez Puth Dahir Amar Adam Mortensen Taylor Garcia Ochoa Diallo Gesmundo Nguyen Hatzey Nguyen Phan Yang Hogg Tran Townes Minkina Mehan Huang Cardoso Walsh Guleith Subedi Kazi Nguyen Kin Ramaj Veli'c Faalelea Martin Roberts Jenkins Trinh Fuerte Ignacio Ramaj Duff Rhodes Velasco Luii Yazie Perry Ferguson Pajel DeAsis Kahn Asfaw Haji Cousins Moalim Sharif Smith Singleton Kutbiddinov Kelleppan Simon Eley Nuon Osman Edwards Agliam Ayala Perez Tang Hernandez Mankaniya Habties Felicitas Elmore Loukman Tautau Yusuf Alejandre Chaonpoj Narong Jimenez Ramirez Mussa Forsyth Nguyen Ochoa Binalangbang Palanchuk Rader Mekonnen Drachenko Muigueta Rocha Johnson Figueroa Gitau Lee Huynh Dinh Castro-Wilson Tran Rautio Nguyen Stowers Rock Moore Jordan Sparks Enebrad Mason Nguyen Harrington Chao Williams Monillas Kin Soldonia Johnson Tupufia Iose Ahmed-Sald Garcia Page Tolo Ali Faalelea Oparaocha Jackson Luanglath Tran Tabile Franck Gaoaen Powell Horton Souksavat Blakely Gonzalez Dowd Araya Chavez Gahou Amir Bennett Chessin-Yudin Pape Robles Achatz Lee Abehm Eddings Hedeen Ung Cremeens Deneke Collins Ditianquin Sahim Steblousvaya Rico Lopez Lockhart Mussa Greene Mohamed Ha Molaseng Madden-Laupati Gabriel Ly Salinas Isaac Ali Wells Mankaniya Valenline Browne Cardenas Fant Fisher Goodwin Grady Hankerso Hewitt Hogan Hernandez Said Ismailzada James Habtom Hernandez Jama Korling Kone Mohamud Johnson Paaga Patterson Le Reed Robkin Sandell Sullivan Tate Ali Locke Martin Mizuki Mohammed Phonethep Phung Price Royce Ruiz Sechele Saeturn Snell Thai Tubera Gray Bustos Turner Valencia Sletten Medrano Figureoa Sum Leonte Tubera Motu Goodridge Ingraham Peregrino Dimick Gure Fertakis Ahmed Gulaliyer Brenner Hamam Ali Hamam Awed Huynh Kimani Diaz-Sanchez Mohamoud Assefa Gebru Shukurov Francia Fahiye Bautista Pham Kassa Pham Nelson Nguyen Assefa Alemu Abdelrahim Cash Ibanez Phalla Valencia Leiato Al-awadi Coyoy Oregon Rosas Varnum Lantzy Carter Martin Eagler Omar Lam Tautua-Jantoc Cordova Halilovac Enriquez Agustin Le Tran Vann Asirot Rucker Gipson Torrey Bennett Bie Nguyen Ling Brown Vo Crim Do Smith Wong Kalokoh Sy Nguyen Hill Bennett Ferencali Kicic Reynose Saepharn Truong Reynolds Hua Eng Thao Hwang Nguyen Paet Dang Bentley Benedictus Strommer Jenkins Archambault Elisara Miller Mondragon Flores-Zamora Jean-Pierre Pham Badillo Pacheco Singh Diallo Viray Juan Nguyen Moi Friday Griggs Abaata Singh Basson Marlow Bettis Kaur Acharya Rizal Negussie Rojas-Lopez Hale George Hungi Vuong Sisavath Wilker Le Sim Crichton Crichton Le Boyko Cruz Siliaga Chao Nguyen Trac Robles Serrano Guardado Mak Hagler Nieves Bui Myers Jimenez Syluangkhot Chao O'Briant Schmitt Vo Souriyadeth Ling Mehlhaff Dytioco Badangulo Vu Winfrey Sandhu Nguyen Phan Dhubow Massey Saeteurn Rountree Logman Kirk Adan Brown Felipe Le Burke Ushimaru Moore Huynh Valentinyova Young Cervantes Escalante Rapp Daley Simone Alvarado Beauchamp Schmuck Berry Anderson Flake Gonzales Barrientos Bettis Everett Foster Young Bizzell Deleon Akpojuvno Haile Garcia-Valdez Bottheim Burrell Corado Girma Marlow Tasisa Vong Mamay said Hailu Young Adam Gatdula Mozo-Olazoon Ahmed Osman Moo Whitford Malin Warsame Waqo Motu Li Ahmed Cheatham Gumiran Makela Manneh Mannhalt McCallum Mergaert Moalim Lopez- Samayoa Trinh Ouch Mohamud Nurick Ponsang Pan Rasmussen Ruggiero-Upton Shaiki Sharif Sison Smith Smith Snyder Stewart Tangney Graff Reader Eidson Al-Shiblawi Amar Casillas Espinoza Hussein Jimenez Omar Pham Rojas Sotero Tarte Teferi Tran Tu Tu Vallejo Velazquez Vo Winston Wu Yaghmai-Zadeh Yan Zhang Leung Edwards McGary Sanders Strauss Welsh Stucke Velazquez Beasley Abebe Alvarado Kochhar Do Brown Hall Romero Rul Ngo Johnson Brown Chhetri Bui Celmar Chin Choi Chung Chum Commissiong Cross Dang Davis Deng Deng Dessalga Duong Fung Garcia-Cruz Giap Greeley Hawkins Ho Humphreys Hymowitz Vasquez Mao Ahmed Isaacson Beridze Nguyen Kern Khalif La Lang Leu Li Libed Loubet-Senear Lura Ma Mai Mazila Sandstrom Tran Wong Burrell Deurwarder Lloyd Lefterys Huynh Kaur Bolinger Adan Amin Paraiso Yocum Cooke Tat Quintas Clinton Nguyen Canales Collazo Speaks Calsado McKagan Mascorro Lon Lillis Carino Mora Summers Olter Diaz Rizal Raymundo Terrones Junior Kemp Benson Murthi Burton Nguyen Valadez Garnica Vela Olvera Fa'amausili Amnuayvittayakool Arellano Leuluaialil Hagos Bellows Gegregziabher Mac Abrahim Stannard Stroy Sinagel Caoagdan Ashkir Chand Johanson Neang Brolarevic Mehlhaff Angaw alfaro slingsby mohamed mujic salkic Dang Vigo Silva Mandaville Strothers Johnson Haley Nguyen Untalan Villagomez Sa' Wiley Johnson Steele Capern Rizal Covington Yourglich Fassett Estell-Purvis Subiel Abdikarem Deandre Thach Thomas Troseth-Singleton Mclaughlin Lemen Ekberg Hailu Nguyen Nguyen Naylor Salah Bartlett Ayana Bell Decker Fikru Garcia Jilo Kifle Sharif Smith Turner Gold Do Viel Nguyen Williams Kurahashi Kurahashi Holder Robles Ly Thordarson Sandhu Matte Hughes Frost Bradley Nagy Phan Cassell Mohamed Opanasevych Ali Cao Roun Ramadan Okullu Miller Baird Leago Nelson Mohamed Sanchez Kassa Ali Eufeminiano Kim Ngu Apollon Song Ngo Rathore Dhaliwal Hussein Watson Corral Sharif Leung Miller Kurahashi Nguyen Moses Sosanavongsa Nyakahora Craft Alvarez Villa Salim Ali Barzie Manangan Le Epilepsia Rattanasone Jezek Tenorio-Guzman Aho Singh Olow Adan Singh Bullo Burridge Branham Fukuhara Barnard Polk Koerner Harris-Welch Ramirez Stepper Swamy Mackey Tupuola Meullion Nelson Huynh Minaylova Rivelli Stephan-Borer Tedrick Cercado Jackson White Manning Williams Maalim Clinton]
  firstnames = %w[Abel  Bhawandeep  Cody  Fatima  Irma  Jagdev  Khalid  Kiranjit  Loveraj  Maricela  Matthew  Mekedes  Preet  Rajveet  Ravyn  Rosa  Sara  Tehaye  Vanessa  Jacob  Jimmy  Cortney  Mary  Chenda  Crystal  Solinda  Nasri  Ashly  Alexis  Alexandria  Alison  Anh  Angel  Ashton  Athena Mae Casey  Charissa  Cindy  Eden  Heidi  Jan  Jerry  Jordan  Joseph  Kathleen  Kheyceeh  Linet  Mayah  Misa  Myhanh  Najee  Paul  Robin  Ryan  Samantha  Saminder  Sean  Sinear-Joenne  Sirena  Sophia  Souvonnah  Tamanh  Ted  Trung  Tsenat  Tuan  Vanessa  Victor  Vy  Salome  Daniel  Mariko  Phavy  Amanda  Jessica  Benyam  Jose  Bao-Tram  Hillary  Amal  Leah  Catherine  Sophi  Benjamin  Julien  Lucas  Dominique  Tuulikki  Meraf  Alexander  Wendy  Stanley  Anna-Marie  Mercedes  Kathleen  Katherine  Faiza  Qadro  Phuong-Hong  Ngoc  Phi Long Pylson  Timothy  Robin Bird  Sonam  Andrew  Diem-Trinh  Shanty  Kerry  Franklin  Yasin  Alonso  Lameleanqiue  Tanessa  Jennifer  Minoo  Jenilee  Abdisalan  Emanwella  Tafifua  Miguel  Sandra  Imran  Elena  Jeremy  Dariyan  Chasmon  Mychelle  Abdirizak  Johanna  Yazmin  Amber  Tamara  Ashley  Jonathan  Michele  Nadia  DeQuan  Tyler  Edith  John  Sofia  Fikirte  Habiba  Chris  Joshua  Belkisa  Colin  Mohamoud  Laura  Daven  Stephanie  Phelicia  Cooper  Julia  Cesar  Alyssa  Melissa  Vanessa  Minh  Bilal  Jake  Rhea  Jaime  Emma  Joshua  Dion Dominic Jackie  Nicole  Mesa  Jaime  Vinh-Khanh  Aarron  Ryon  Meredith  Erica  Ebonie  Diane  Jalessa  Sarah  Nicholas  Adam  Maryam Monyrith  Abdulwahid  Abraham  Nataliya  Mirela  Zerina  Jonathon  Filmon  Abel  Vidal  Chanrasmi  Helen  Heidi Isias  Troy  Anissa  Nicole  Anita  Alex  Celeste  Lacey  Jennifer  DuPinder  Suleika  Mesert  Samira  Refugio  Shantel  Kerby  Perla  Segen  BreAna  Anisa  Fardowso  Jeff  Bernice  Christian  Nathan  Leila  Eldina  Allison  Britani  Zozan  Ivette Mardiya Gerardo Fardosa Phillip Jia-Hua Rickey Tanay Lanika Victor Majed Margo Shykeisha Jaime Nanci Carlos Tyrone Sydney Abdulqadir Brianna Keity Amanda Claudia Dawit Thao Stephanie  Chris Yordanos Darius Cassondra Cori Betelihem Cuong  An Dat Kristy Thinh Fuamai Yahaira Melissa Katherine Ana Lea Jordan Brittany Anthony Hesham Jagdeep Leslie Schuyler  Nancy Brian Jesse Gretchen Domonique Blessing Jamie Kelvin Kyle Reotta Esther  Johanna Antonio Mostafa Alyza Isaura Daisy Monica A. Christopher Mayra J. David M. Crhistian Joemar Roman  Sajryic Sarah Jesus Ardu Elizabeth  Ayan Maymuna Michael Euel Andrew Sandra Rithy Ratko Arnel Evelyn Hallma John Yasmin Ezekial Chanler Kavneeta Sabina Joseph Muna Abdulkadir Gennique Farida Sangyoung Aimee Martha Peter Paradu Mekdes Reyna Anthony Elsa Elizabeth  Stephanie Srdjan Merhawit George Mercy Debbie Steviss Stephanie Lillian Gustavo Feroal Alayna Maria Jessica Gabriel Monica Aimy Nancie Kianna Beuwnet Abdulkadir Chloe Tuesday Caroline Simon Brittany Amsal Deborah Frank Natausha Michelle Emily Choua Nancy Martha Marie-Faye Yedesdes John Tatyana Henry Fong Jacob Jonathan Thea Clara Jacob Shubneet Donna  Angie Josefa Jovhanna Shullina Katelynn Karlin Javier Carrera Clayton Saleban Desiree Jose Jose Bradley To Amber Gabriela Amarjot Eric Mary Tracy Tedros Fitradin Martin LaQwana Maria Leanna Lou Rafael Britney Mary Jane Clarissa Yasin Tracy Dianne Chun-Yu Krista Hoi-Yan Dustin David Theresea Terrence  Stephen Tatiana Catrena Stephanie Melody Chaniti Elaine Italiana Ngan Elaine Keyaunna Dennis Manpreet Sophie Alyssa Trang Ciara Sophia Liwen Penny Persia Max Roman Ngoc Tuan Huynh Nha  Kristin Romeo Ryan Mariana  Jean Anais Julie Worawat Jeanna Erika Melissa Adina Charleen Joanne Samuel Kurt  Justin Razakh Nur Kelly Cesar Karina Oscar  Diego Lidia Robbie Phuong Jonathan Angelique Karisa Aliz Jared Felicia Blake Alfredo Aubrey Irma Lestraundra Nigisti  Kayla Venissia Xiao Kristina Marian Luly Jaimie Nurryyah Marissa Susan Jessica Sonita Monica Rachael Fati  Jennifer Azuka Samson Angela Ginny Michael Rakeim Cameron Lucy Tierra  Andrew  Honeylet Amanda Farm  Fam  Joey Brittney Briana Michael Christopher Raye-Vivene Rosalinda Nguyen-Trinh Katherine Marcel  Monique  Rachel Aaron Shariesse Jake  Dejan Sara Alexandria Alfredo Stephanie Shanequa Vanessa Alax  Chris Fowsiya  Judy Zaky Ian Monica Adnan Christine  Michelle Hibo Jennifer Ayano Quan Maan Joy Michelle  Katie Jeremy Javier Chunda  Ashton Veronica Sheabin Robert Reggie  Regina Jasdeep Fiaau Duy Desiree Lafaele Cindy Taylor - - Abu  Joshua Samrawit Napha Son Joshua Allen Charmaine Mohamed Mycal Patrick Abdilatif Breann Kristin Sagal Abdirahin Rex Luam Halima Julialynn Adrien John Paul Julia Hoang-Kim Morgan Kirsten Brianna Sheridel Sita Michael Angelica Iman Abraham Yue Jasmine Xiao Hong Christine Tiffany Azelea Alejandra Angela Alisha Daniel  Alonzo Abdifatah Arouna Linda Ly Ali Alec Abraham Cherrelle Morgan Conner Tasjaray Zachary Abdiwahab Stevonta'e Khristian Sarah Maureen Lindsay Khanh Onna Susan Ranesha Michelle Tia Billy Linda Karen Tamthy Meuy Sobin  Julzen Blair Brandon rel Chalres Albert Gjarel Michael  Gogo Johnn  Jordan Roxie Ashley Michelle Ada Damaris Uriel Kaniesha Jonatan Sherrie Truong Ann Naina Jasmine  Catelyn  Arielle Justine Chad Kirk Safia Gregory Angele Kristopher Victor Terrence Amir Oshjseane Juan Irene Joy Monick Aubare Melbourn Khanh-Dung Jose Tiesha Omar Nhat-Cuong Nefi Dulce Musie Marta Kayla Mohamed Farah Dominic Mihn Tram Thuy Anh Tomas Carlos Charmelle Leydhi Chau Nhi Glory Luis Eric Danine Leilani Christina Fadumo Kimhong Manmeet Stephanie Sandra (Lisa) Sachin Tesfanesh Karen Dylan Victoria Cathy Lai Tony Rachel Carolyn Roland Sarah Deborah McKinnley Bai Whitney Emma John Fernando Steven Igar Victor Sandy Peter Vansica My Diane Alex Shadika Arielle Maureen Mae Kimberly DeAndre Rendell Buntu Sokleng Madhar Elona Jeremy Gurkamal Tahira Arminderdeep Saul Niki Ashleigh Lang Steven Hengly Charizz Al'Dianna Alina Amino Lacey Yessica Jephtey Roger Antonio Uriel Ellen Andrea Sheila Sahra Shukri Rahel Dorian Hamda Emily Ladan Ana Richelle Harpreet Melissa Danny Jovan David Tom Jose Pinsokai Mohamed Abdoul Sharmarke Curtis Denzel Griselda Diana Ibrahima Jay Mark Vinh-Truyen Bana Joycelyn Jony Emily Brendan Michael Halle Yelizaveta Rahul Wei Lena Julia Ian Sudi Madhar Shadika Sandy Sokleng Elona Fikret Maheleone Ashley Shaun Shacolby Larry Pamela Jonathan Elana Nephi Ivery Jessica Diliai Henok Javontae Charles Jeryl Alexander David Marta Mohamed Liliana Fardowsa Fatima Julia Andrea Nizomiddiu Samantha Astride Rebecca Nary Miski Taylor Bryan Nancy Mario Harmony Erika Sahina Daniel Paolo Jontira Senan Tatiana Samira Jesus Nutchanart Allyn Diana Bianca Ebsitu Alec My Eva Bernadette Yelena Raette Nardos Anton Feriwoine Jesus Porsche Marisol Moureen Elizabeth Loan Tu-Anh Alejandro Jacky Kayla Katherine Addyson Galen Tri'Ana Irenemarie Kelsey Jesse Vanessa Tram Briona David Taylor Vanessa Sokleng Matias Gilbert Ite Mitivai Hena Carmen Darius Tody Amina Maheleone Chidi Keyona Alex Tyler Mariko Ciahra Princess Joseph Jeremiah Malissa Lareesa Veronica Brenden Genesis Jose Okoyoro Abdullahi Eliza Joshua Erick Charmin Nicolas Stephen Bethlehem Lameica Kinsey Uyhun Heaven Zelalem Brandi Haidee Sameed Lena Ruben Christian Bonitaflor Rania Makya Ikran Nhung Ato Rebecka Renz Quynh Loradel Khadijah Mohamed Elise Sahina Nolandra Raqual Lea Sierra Christina Chantel Erick Andrew Shaquille Nakeya Nestor Raqia Mursal Cassidy Yohana Mayra Marian Megan Mariam Ayan Branisha Elijah Future Kathy Carolyn Alex Kate Alexis Brian Mohamud Virginia Janiko Teresa Bontu Rick Van Shaquelle Jordan Sheila Israel Anthony Ezzard Vanny Mary Ann Jatajia Sayra Aujnae Isael Bryanna Elizabeth Leakhena Magdalena Lady Marie Loilani Chad Tyler Joann Cassia Saida Michael Lucky Kamran Taylor Monia Leila Mawada Mohamed Johnson Maureen Cynthia Umaa Mahlet Tirhas Akhmed Denise Hana Jikiri Thuan Amelina Duc Melissa Michael Ruth  Meseret Aman  Christina Carl Samantha Fabian Etevise Hamzah Sara Arturo Alec Ryan Alyssa Kenneth Janiko Brandy Imran Michael Jordan Pablo Amer Selena Danica Loann Vanessa Chris Mary Grace Jasmine Quiarra Ariel Brianna Joanne Nhu-San Jiaxin Louis Brian William Jenny Meykia Ka Wai Mariam Sabina Hanh  LaRelle Justin Florian Mujo Nelson Samantha Jennifer Jessica Vinh-Phuoc Daymon Blong Hanabol Vi Darwin Max Dara Edward Sean Joshua Jerry Unai Korie Maria Yajaira Josias Tinh Diana Jagjeet Boubacar Jeremy Primer Trang Amusa Wren Brittney Hanna Baljit Benjamin Taylor Michael Manpreet Kamala Krishna Roman Claudia Ashley Srue Joyce Johnny Rachel Erin Missouri Wadhanna Freda Violet Catherine Vitaliy Rosalba Carolena Alex Nhu-Ngoc Ky Jesus Javier Genesis Sonila Malcolm Alexandra Tricia Tyree Gudilia Artchalar Amy  Jameeka Jessica Heiu-Joe Kevin Bao John Jamie Samantha Jennifer Raven Prabhjot Kristen Sueanne Abubakar Dominique Michelle Brandon Slwan Elizabeth Mohamed Cleressa Justine Hannah  Camille Kathryn Courtney Peter Kristina Samuel Yolanda Tesuro Jay  Ryan Meru Jesus Ebony Kylee Dylan Emily Shykila Marivel Lee Michael Hayley Melinda Maria Lawrence Ruben Alana Obed Christina Jon  Cody Saul Beny Kelly Kidst Chanthee Addis Makiua Senait Zachary Nur Lourdeshrine Omar Abdirahman Halima Helber Matthew Sahra Ayan Daraartu Mason Isaac Iman Jasmine Jennifer Noah Fatoumata Meghan Kiara Myell Faduma Poncho Melissa Amanda  Nasro Danielle Apichaya Veasna Erica Kilian Rasha Khalida Christian Kiana Rachel Julia Patrick Joseph Alexa Morgan Emily Karar Aychatou Janet Jisela Iglan Mauricio Abdifatah Elizabeth Hector Rosa Nicole Meskren Brian Kevin Anthony Desiree Maria Lena Michael Zhenyuan Faramarz Meitei (Jennifer) Patrick Amanda Mitchell Nakee Nick Eric Kyle Kelcie Edgar Destiny Tigist Jesus Dilpreet Romeo Garrett Jontae Savannah Simo Quynh Karyn Jazane Saugat Ajase Randy Melinda Jimmy Richard Wai Natasha Haley Trina Ebonee Ping Qiwen Weiki  Raymond Tsz Yeung "David" Rodrigo Quy Anastasia Scott Christopher Kaetlin Elie Slidar Philien Samy Jasmine Khatia Vivi Madeline RuQiyo Tiffany Andy Teresa Christopher  Ryan Christina Ivy Waylon Erica Perseverance Catherine Phat Adam Brandon Caroline  Joseph Caleb Thuy Ai Simarleen Sebastian Badri Najib Mark Brittany Cheyanne Amy Klarissa Marcus John Vetotia Ross Jasmine Denice Autumn Mario Johnathan Jasmine Jude Thaddeus Juan Deonna Brandon Ingrid Dadi Joab Kennedy Kevin Carla Veronica Vishalni David Thuy My Steven Viridiana Luis Omar Roman Chuthamart Brenda Niko Jonathan Ian  Milen Allan Bilal Cleo Jazmyne Angelique Justin Mursal Ash Marie Karany Meldina Alison Ethiopia alexandra ian ayan anela merisa Jaqueline Ruby Jennifer Marlys Mataeo Sabrina Myriah Vinnie Khen Selina Patrick Jessica Juan Tyler Elaine Hem Arianna Pitchaya Franke Mercedes John Harold Aamed Carl Jonathan Ebony Larell Christian Tanner Erik Senait Jong Thien Christian Diana Luke Natnale Margaret Justine Meron Andrew Gada Hiwot Khalida EJ Patrick Ariana Duc-Hoang Witner Nhi Alysha Baku Baku Dakari Robbyn Tommy Ashley Sandeep Gurkewalpreet Veronik Felicia Davontae Jaclyn Thom Vashtic Mohamed Roman Mohamed Yichao Radhiyya Mustafa Simon Kira Leah Rena Quaylan Mohamed Brittny Nadia Shuib Rykiel Elisabeth Kerilyn Viliana Jiwon Nghi Jasmin Rajpreet Sagal Leah Kaitlyn Samira Alan Andrea Baku Nhi Anthony Cristy Robin Tiarra Sol Asha Mustafa Luke Ednalyn Jimmy Sean Pratiya Zachavy Trinity Latulitea Abhijot Hawa Ahmed Maujinder Said Alden Nathan Kyle Angel Jabrii Tyler D'nique Hector Sara Victoria Natalie misioka Devante Christian Monika Alexandra Karissa Savanna Cody Michael Nicholas Cierra Aubrey Jasmine Adil Alisa]
  
  high_schools = %w[Foster ACE Renton Global Odyssey Cleveland]
  high_schools.each do |high_school|
    HighSchool.find_or_create_by_name_and_partner_school(high_school + " High School", true)
  end
  
  grad_years = (2011..Time.now.year+1).to_a
  n = ENV['N'].to_i
  n.times do |i|
    Participant.create(
      :firstname => firstnames[rand(firstnames.size)].strip, 
      :lastname => lastnames[rand(lastnames.size)].strip, 
      :high_school_id => HighSchool.find(:first, :order=>"Random()").id, 
      :grad_year => grad_years[rand(grad_years.size)]
    )
    print "."
  end
  puts "\nGenerated #{n} participants."
  
end