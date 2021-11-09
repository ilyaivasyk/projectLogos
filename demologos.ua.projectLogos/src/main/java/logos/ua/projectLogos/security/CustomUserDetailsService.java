package logos.ua.projectLogos.security;

import java.util.Collections;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import logos.ua.projectLogos.dao.UserRepository;
import logos.ua.projectLogos.domain.User;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
	@Autowired
	private UserRepository repository;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Optional<User> userOptional = repository.findByEmail(email);
		if (userOptional.isPresent()) {
		User user = userOptional.get();
			return new CustomUserDetails(user, Collections.singletonList(user.getRole().toString()));
		}
		throw new UsernameNotFoundException("No user present with useremail:" + email);

	}

}
