<h5 class="text-center">The invitation has been sent!</h5>
<div class="text-center">Invite sent to {{ $name }}</div>
<div class="text-center">At {{ $email }}</div>
@isset($venue)
    <div class="text-center">JOINING: {{ $venue }}</div>
@endisset

