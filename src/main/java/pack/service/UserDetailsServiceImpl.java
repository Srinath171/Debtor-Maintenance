package pack.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import pack.model.User;
import pack.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		Optional<User> user = userRepository.findByUserName(userName);
	
	 	return user.map(UserDetailsImpl::new).get();
	}
	
	public void usersave(User u) {
		u.setActive(true);
		u.setRoles("ROLE_USER");
		userRepository.save(u);
	}
	public void adminsave(User u) {
		u.setActive(true);
		u.setRoles("ROLE_ADMIN,ROLE_USER");
		userRepository.save(u);
	}

}