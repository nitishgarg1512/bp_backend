var reload = false;
$(function() {
    if ($.support.pjax) {
        $(document).on('pjax:beforeSend', function(event, xhr, options) {
            xhr.setRequestHeader('X-CSRF-TOKEN', LA.token);
        });

        $(document).on('click', '#inviteUser', function(event) {
            const url = '/admin/staff';
            const formData = $('form#inviFormAjax').serializeArray();
            $.pjax({
                url: url,
                container: '#inviteUserContainer',
                type: 'POST',
                data: formData
            }).done(function(res) {
                $('#inviteUserForm').hide();
                $('#inviteUserContainer').show();
                reload = true;
            }).fail(function(res) {
                $('#inviteUserForm').hide();
                $('#inviteUserContainer').show();
                console.log("FAIL");
            });
        });

        $(document).on('click', '#addVenue', function(event) {
            $('#addVenueForm').hide();
            $('#addVenueContainer').show();
            const url = '/admin/venues';
            const formData = $('form#addVenueFormAjax').serializeArray();
            $.pjax({url: url, container: '#addVenueContainer', type: 'POST', data: formData});
        });
    }

    $('#modal-invite-user').on('hidden.bs.modal', function (e) {
        $('#inviteUserForm').show();
        $('#inviteUserContainer').hide();

        if (reload) {
            location.reload();
            reload = false;
        }
    })

    $('#modal-add-venue').on('hidden.bs.modal', function (e) {
        $('#addVenueForm').show();
        $('#addVenueContainer').hide();

        if (reload) {
            location.reload();
            reload = false;
        }
    })
});
