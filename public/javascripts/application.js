// Handles filtering lists in place
function initFilters(filter_keys) {
	filters = new Hash;  // filters are the things to filter on, like status and assigned_to
	filterables = new Hash;  // filterables are the items to filter, like table rows or list items
	appliedFilters = new Hash;  // applied filters is a snapshot of the current state of all the filters
	filter_keys.each(function(f) { filters.set(f, new Array) });
	filter_keys.each(function(f) { filterables.set(f, new Hash) });
	filter_keys.each(function(f) { appliedFilters.set(f, new Array) });
}

// Adds a key to the list of filters
function addToFilter(filter_key, value) {
	filters.get(filter_key).push(value)
	appliedFilters.get(filter_key).push(value)
}

// Adds a filterable item
// The filterables hash looks like:
//    assigned_to (hash key)
//        - 3103 (hash value -> array)
//             - object
//             - object
//        - 144 (hash value -> array)
//             - object
//             - object
function filterable(obj_id, filter_key, value) {
	if (typeof(filterables) === "undefined") {
		return false
	}
	h = filterables.get(filter_key)
	if (h.get(value) == undefined) {
		h.set(value, new Array)
	}
	h.get(value).push($(obj_id))
}

function changeFilter(obj_dom_id, filter_key, value) {
	element = $(obj_dom_id)
	// window.console.log("changeFilter: obj_dom_id: " + obj_dom_id + " -- checked?: " + element.checked + " -- filter_key: " + filter_key + "-- value: " + value)
	if (element.checked) {
		// appliedFilters.get(filter_key).push(value)
		appliedFilters.set(filter_key, true)
	} else {
		// appliedFilters.set(filter_key, appliedFilters.get(filter_key).without(value))
		appliedFilters.set(filter_key, false)
	}
	executeFilters();
}

// Executes the filter on the filterables, taking into account all of the filters that have been applied or not.
function executeFilters() {
	// window.console.log("   Executing filters")
	showAllFilterables();
	filterables.each(function(pair) {
		filter_key = pair.key
		elements = pair.value.get(false)
		if (appliedFilters.get(filter_key) == true && elements) {
			// window.console.log("   Filter " + filter_key + ": Hiding " + filter_key + "/false (" + elements.size() + " elements)")
			elements.invoke('hide')
		} else if (elements) {
			// window.console.log("   Filter " + filter_key + ": Keeping " + filter_key + "/true visible (" + elements.size() + " elements)")
		} else {
			// window.console.log("   Filter " + filter_key + ": No elements to filter for " + filter_key)
		}
	})
	updateRecordCount();
}

// shows all the filterable items to give us a clean slate before running executeFilters()
function showAllFilterables() {
	// window.console.log("   Showing all filterables")
	filterables.each(function(filter_keys) {
		filter_keys.value.each(function(elements) {
			elements.value.invoke('show')
		})
	})
}

// Shows everything and unchecks all the checkboxes
function clearAllFilters() {
	showAllFilterables()
	$$('.filter_checkbox').each(function(e) {e.checked = false}) // uncheck all the boxes to start
	updateRecordCount()
}

// Tries to update a div with id "filtered_record_count" with the number of filterables that are visible.
// Or, specify a filter_key to only return the number for that filter_key.
function updateRecordCount(filter_key) {
	// window.console.log("updateRecordCount(" + filter_key + ")")
	if (filter_key) {
		if ($('record_count_' + filter_key)) {
			filterables_count = filterables.get(filter_key).get(true)
			filterables_count = filterables_count == undefined ? "0" : filterables_count.size()
			$('record_count_' + filter_key).innerHTML = filterables_count
		}
	} else {		
		if ($('filtered_record_count')) {
			n = 0
			elements = $$('.filterable')
			for (var i = 0; i < elements.size(); i++) {
				if (elements[i].visible()) {
					n++
				}
			}
			$('filtered_record_count').innerHTML = n + " of "
		}
		filterables.each(function(pair) {
			filter_key = pair.key
			updateRecordCount(filter_key)
		})
	}
}

// Sets a filter using some shortcuts and then executes the new filter. Valid options for 'type' are:
// 	'only'	- shows just the value that's passed
// 	'all'	- shows all filterables in this category
// 	'none'	- shows none of the filterables in this category (this is the default)
function setFilter(type, filter_key, value) {
	value += ''	// convert int to string
	if (filter_key === undefined) {
		filter_key = ''
	}
	// appliedFilters.get(filter_key).clear() // filter everything to start
	$$('.' + filter_key + '_filter_checkbox').each(function(e) {e.checked = false}) // uncheck all the boxes to start
	if (type == 'only') {
		// appliedFilters.get(filter_key).push(value)
		appliedFilters.set(filter_key, value)
		dom_id = "filter_" + filter_key + "_" + value
		$(dom_id).checked = true
	}
	if (type == 'all') {
		appliedFilters.set(filter_key, filters.get(filter_key).clone())
		$$('.' + filter_key + '_filter_checkbox').each(function(e) {e.checked = true})
	}
	executeFilters();
}

function setToNow(element_id) {
	d = new Date()
    $(element_id + '_1i').value = d.getFullYear()
    $(element_id + '_2i').value = d.getMonth() + 1
    $(element_id + '_3i').value = d.getDate()
    $(element_id + '_4i').value = d.getHours()
    $(element_id + '_5i').value = d.getMinutes()
}