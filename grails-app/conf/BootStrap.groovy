import com.sukriti.EducatorUser
import com.sukriti.Role
import com.sukriti.EducatorUserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()

        def testUser = new EducatorUser('me', 'password').save()

        EducatorUserRole.create testUser, adminRole, true

//        assert EducatorUser.count() == 1
//        assert Role.count() == 2
//        assert EducatorUserRole.count() == 1
    }
    def destroy = {
    }
}
