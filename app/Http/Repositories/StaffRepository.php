<?php

namespace App\Http\Repositories;

use App\Models\AdminRoleUser;
use App\Models\GeneralOverseer;
use App\Models\RelationshipLeagueProviderGO;
use App\Models\RelationshipLeagueProviderStaff;
use App\Models\RelationshipLeagueProviderVM;
use App\Models\Staff;
use App\Models\VenueManager;
use Encore\Admin\Auth\Database\Administrator;

class StaffRepository
{
    public function createStaff($firstName, $surname, $email, $userType, $venueId, $lpId)
    {
        $admin = new Administrator();
        $admin->name = $firstName;
        $admin->surname = $surname;
        $admin->email = $email;
        $admin->username = $email;
        $admin->password = bcrypt(str_random(6));
        $admin->saveOrFail();
        // TODO: need to send username/password to user.
        // TODO: SEND EMAIL
        $adminId = $admin->id;

        $this->createUser($userType, $adminId, $venueId);
        $this->createRole($userType, $adminId);

        $this->createRelationshipWithLP($userType, $lpId, $adminId);
    }

    protected function createRelationshipWithLP(string $userType, int $lpId, int $adminId)
    {
        switch ($userType) {
            case ROLE_GO_S:
                $relationship = new RelationshipLeagueProviderGO();
                $relationship->league_provider_id = $lpId;
                $relationship->general_overseer_id = $adminId;
                $relationship->save();
                break;

            case ROLE_VM_S:
                $relationship = new RelationshipLeagueProviderVM();
                $relationship->league_provider_id = $lpId;
                $relationship->venue_manager_id = $adminId;
                $relationship->save();
                break;

            case ROLE_S_S:
                $relationship = new RelationshipLeagueProviderStaff();
                $relationship->league_provider_id = $lpId;
                $relationship->staff_id = $adminId;
                $relationship->save();
                break;
        }
    }

    protected function createUser(string $userType, int $adminId, int $venueId)
    {
        switch ($userType) {
            case ROLE_GO_S:
                $go = new GeneralOverseer();
                $go->id = $adminId;
                $go->save();
                break;

            case ROLE_VM_S:
                $vm = new VenueManager();
                $vm->id = $adminId;
                $vm->venue_affiliation = $venueId;
                $vm->save();
                break;

            case ROLE_S_S:
                $staff = new Staff();
                $staff->id = $adminId;
                $staff->venue_affiliation = $venueId;
                $staff->save();
                break;
        }
    }

    protected function createRole(string $userType, int $adminId)
    {
        $roleId = ROLE_GO_NUMBER;
        switch ($userType) {
            case ROLE_GO_S:
                $roleId = ROLE_GO_NUMBER;
                break;
            case ROLE_VM_S:
                $roleId = ROLE_VM_NUMBER;
                break;
            case ROLE_S_S:
                $roleId = ROLE_S_NUMBER;
                break;
        }
        $roleUser = new AdminRoleUser();
        $roleUser->user_id = $adminId;
        $roleUser->role_id = $roleId;

        $roleUser->save();
    }
}
