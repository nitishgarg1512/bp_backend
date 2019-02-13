var reload = false;
$(function() {
    $.ajaxSetup({
        headers: {'X-CSRF-Token': LA.token}
    });

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
    });

    $('#modal-add-venue').on('hidden.bs.modal', function (e) {
        $('#addVenueForm').show();
        $('#addVenueContainer').hide();

        if (reload) {
            location.reload();
            reload = false;
        }
    });

    $('#modal-edit-facilities').on('hidden.bs.modal', function (e) {
        if (reload) {
            location.reload();
            reload = false;
        }
    });

    $('input#changingRoom').change(function(event) {
        var isChecked = $(this).is (':checked');
        var venueId = $('input#facilitiesVenueId').val();

        const url = '/admin/venues/facilities';
        $.ajax(
            {url: url, type: 'POST', data: {changingRoom: isChecked ? 1 : 0, venueId: venueId}
        }).done(function(res) {
            reload = true;
        });;
    });

    $('input#floodLights').change(function(event) {
        var isChecked = $(this).is (':checked');
        var venueId = $('input#facilitiesVenueId').val();

        const url = '/admin/venues/facilities';
        $.ajax(
            {url: url, type: 'POST', data: {floodLights: isChecked ? 1 : 0, venueId: venueId}
            }).done(function(res) {
            reload = true;
        });;
    });

    $('input#parking').change(function(event) {
        var isChecked = $(this).is (':checked');
        var venueId = $('input#facilitiesVenueId').val();

        const url = '/admin/venues/facilities';
        $.ajax(
            {url: url, type: 'POST', data: {parking: isChecked ? 1 : 0, venueId: venueId}
            }).done(function(res) {
            reload = true;
        });;
    });

    $('input#nearby').change(function(event) {
        var isChecked = $(this).is (':checked');
        var venueId = $('input#facilitiesVenueId').val();

        const url = '/admin/venues/facilities';
        $.ajax(
            {url: url, type: 'POST', data: {nearby: isChecked ? 1 : 0, venueId: venueId}
            }).done(function(res) {
            reload = true;
        });;
    });

    // CREATE PITCH
    $('#modal-edit-pitches').on('hidden.bs.modal', function (e) {
        $('#createPitchForm').show();
        $('#createPitchContainer').hide();
        if (reload) {
            location.reload();
            reload = false;
        }
    });

    $(document).on('click', '#createPitch', function(event) {
        const url = '/admin/venues/pitch';
        const formData = $('form#createPitchFormAjax').serializeArray();
        $.ajax({
            url: url,
            type: 'POST',
            data: formData
        }).done(function(res) {
            $('#createPitchForm').hide();
            $('#createPitchContainer').show();

            $('#createPitchContainer').html(res.message);
            reload = true;
        });
    });

    // CREATE LEAGUE
    $('#modal-create-league').on('hidden.bs.modal', function (e) {
        $('#createLeagueForm').show();
        $('#createLeagueContainer').hide();
        if (reload) {
            location.reload();
            reload = false;
        }
    });

    $(document).on('click', '#createLeague', function(event) {
        const url = '/admin/venues/league';
        const formData = $('form#createLeagueFormAjax').serializeArray();
        $.ajax({
            url: url,
            type: 'POST',
            data: formData
        }).done(function(res) {
            $('#createLeagueForm').hide();
            $('#createLeagueContainer').show();

            $('#createLeagueContainer').html(res.message);
            reload = true;
        });
    });
});
