$(function() {
    if ($.support.pjax) {
        $(document).on('pjax:beforeSend', function(event, xhr, options) {
            xhr.setRequestHeader('X-CSRF-TOKEN', LA.token);
        });

        $(document).on('click', '#inviteUser', function(event) {
            $('#inviteUserForm').hide();
            $('#inviteUserContainer').show();
            const url = '/admin/staff';
            $.pjax({url: url, container: '#inviteUserContainer', type: 'POST'});
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
