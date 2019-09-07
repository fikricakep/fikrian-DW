function biodataAnda(biodata){
 return {
	name: 'Fikri Ali Nawawi',
	address: 'Dusun Angsanah 02, Lenteng Barat, Lenteng, Sumenep',
	hobbies: ['Nonton', 'Makan'],
	is_married: true,
	school: {highSchool: 'MAU Amanatul Ummah',
		university: 'UMY'},
	skills: [{field: 'UI Design',
		length_of_experience: '2 months'},
		{field: 'Entry Data',
		length_of_experience: '5 months'},
		{field: 'Digital Marketing',
		length_of_experience: '4 months'}]
	}
}
console.log(biodataAnda('fikri'));