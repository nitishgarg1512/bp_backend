$(function() {
    if ($.support.pjax) {
        $(document).on('pjax:beforeSend', function(event, xhr, options) {
            xhr.setRequestHeader('X-CSRF-TOKEN', LA.token);
        });

        $(document).on('click', '#inviteUser', function(event) {
            // $('#inviteUserForm').hide();
            // $('#inviteUserContainer').show();
            const url = '/admin/staff';
            var people = [{ first: "John", last: "Doe" }, { first: "Jane", last: "Smith" }];

            const formData = $('form#inviFormAjax').serializeArray();
console.log(formData);
            $.pjax({url: url, container: '#inviteUserContainer', type: 'POST', dataType: 'application/json', data: people});
        });

        $(document).on('click', '#addVenue', function(event) {
            $('#addVenueForm').hide();
            $('#addVenueContainer').show();
            const url = '/admin/venues';
            $.pjax({url: url, container: '#addVenueContainer', type: 'POST'});
        });
    }

    $('#modal-invite-user').on('hidden.bs.modal', function (e) {
        $('#inviteUserForm').show();
        $('#inviteUserContainer').hide();
    })

    $('#modal-add-venue').on('hidden.bs.modal', function (e) {
        $('#addVenueForm').show();
        $('#addVenueContainer').hide();
    })
});
