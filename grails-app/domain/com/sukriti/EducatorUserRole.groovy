package com.sukriti

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class EducatorUserRole implements Serializable {

	private static final long serialVersionUID = 1

	EducatorUser educatorUser
	Role role

	EducatorUserRole(EducatorUser u, Role r) {
		this()
		educatorUser = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof EducatorUserRole)) {
			return false
		}

		other.educatorUser?.id == educatorUser?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (educatorUser) builder.append(educatorUser.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static EducatorUserRole get(long educatorUserId, long roleId) {
		criteriaFor(educatorUserId, roleId).get()
	}

	static boolean exists(long educatorUserId, long roleId) {
		criteriaFor(educatorUserId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long educatorUserId, long roleId) {
		EducatorUserRole.where {
			educatorUser == EducatorUser.load(educatorUserId) &&
			role == Role.load(roleId)
		}
	}

	static EducatorUserRole create(EducatorUser educatorUser, Role role, boolean flush = false) {
		def instance = new EducatorUserRole(educatorUser: educatorUser, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(EducatorUser u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = EducatorUserRole.where { educatorUser == u && role == r }.deleteAll()

		if (flush) { EducatorUserRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(EducatorUser u, boolean flush = false) {
		if (u == null) return

		EducatorUserRole.where { educatorUser == u }.deleteAll()

		if (flush) { EducatorUserRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		EducatorUserRole.where { role == r }.deleteAll()

		if (flush) { EducatorUserRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, EducatorUserRole ur ->
			if (ur.educatorUser == null || ur.educatorUser.id == null) return
			boolean existing = false
			EducatorUserRole.withNewSession {
				existing = EducatorUserRole.exists(ur.educatorUser.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['educatorUser', 'role']
		version false
	}
}
