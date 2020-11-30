
User.destroy_all
Company.destroy_all
Contact.destroy_all
JobApplication.destroy_all
JobContact.destroy_all 
FollowUp.destroy_all 
Interview.destroy_all



comm_type = ["Email", "Phone", "Video", "In Person"]
status = ["Sent Resume", "Interview Scheduled", "Waiting on Decision", "Got an Offer", "Did Not Get the Position", "Declined the Offer", "Accepted the Offer"]

u1 = User.create(
    first_name: "Jina",
    last_name: "Smith",
    email: "jina@email.com",
    password_digest: "jina",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAf_DARs3j-x3klIyxyDanfMFShffMn0LrCw&usqp=CAU",
)
u2 = User.create(
    first_name: "Suzy",
    last_name: "Hill",
    email: "suzy@email.com",
    password_digest: "suzy",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
)
u3 = User.create(
    first_name: "Jack",
    last_name: "Clark",
    email: "jack@email.com",
    password_digest: "jack",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
)
u4 = User.create(
    first_name: "Evan",
    last_name: "Lewis",
    email: "jack@email.com",
    password_digest: "jack",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
)


codeoverflow = Company.create(
    name: "CodeOverFlow",
    street_address: "2000 S Street, NW",
    city: "Washington",
    state: "DC",
    zipcode: 20036
)
amazon = Company.create(
    name: "Amazin",
    street_address: "900 Owen Boulevard",
    city: "Arlington",
    state: "VA",
    zipcode: 22202
)
flatiron = Company.create(
    name: "Flaron",
    street_address: "111 Tron Street, NW",
    city: "Washington",
    state: "DC",
    zipcode: 20005
)
recruit = Company.create(
    name: "Recruit",
    street_address: "321 Best Avenue",
    city: "Fairfax",
    state: "VA",
    zipcode: 22033
)
google = Company.create(
    name: "Google",
    street_address: "800 G Street",
    city: "Reston",
    state: "VA",
    zipcode: 20915
)
boeing = Company.create(
    name: "Boeing",
    street_address: "120 Tech Street",
    city: "Alexandria",
    state: "VA",
    zipcode: 22302
)
orbit = Company.create(
    name: "Orbit",
    street_address: "620 Galaxy Circle",
    city: "Washington",
    state: "DC",
    zipcode: 20036
)
network = Company.create(
    name: "Network Tech",
    street_address: "620 Galaxy Circle",
    city: "Rockville",
    state: "MD",
    zipcode: 20877
)
acadia = Company.create(
    name: "Acadia",
    street_address: "22 Range Boulvard",
    city: "Vienna",
    state: "VA",
    zipcode: 22180
)
willer = Company.create(
    name: "Willer",
    street_address: "5 Jackson Street",
    city: "Fairfax",
    state: "VA",
    zipcode: 22000
)




c1 = Contact.create(
    first_name: "Anna",
    last_name: "Lee",
    email: "anna@email.com",
    title: "HR Manager",
    phone: "202-859-2727",
    company_id: codeoverflow.id
)
c2 = Contact.create(
    first_name: "Rick",
    last_name: "Slon",
    email: "rick@email.com",
    title: "HR Manager",
    phone: "703-976-1000",
    company_id: amazon.id
)
c3 = Contact.create(
    first_name: "Bob",
    last_name: "Jones",
    email: "bob@email.com",
    title: "HR Manager",
    phone: "202-221-4321",
    company_id: flatiron.id
)
c4 = Contact.create(
    first_name: "Rebecca",
    last_name: "Lee",
    email: "rebecca@email.com",
    title: "Sr HR Manager / VP",
    phone: "703-777-3333",
    company_id: recruit.id
)
c5 = Contact.create(
    first_name: "John",
    last_name: "Lopez",
    email: "john@email.com",
    title: "HR Manager",
    phone: "703-213-1212",
    company_id: google.id
)
c6 = Contact.create(
    first_name: "Larry",
    last_name: "Williams",
    email: "larry@email.com",
    title: "HR Director",
    phone: "202-221-1111",
    company_id: boeing.id
)
c7 = Contact.create(
    first_name: "Olive",
    last_name: "Miller",
    email: "olive@email.com",
    title: "Sr HR Manager",
    phone: "202-859-2828",
    company_id: orbit.id
)
c8 = Contact.create(
    first_name: "David",
    last_name: "Anderson",
    email: "david@email.com",
    title: "HR Manager",
    phone: "240-204-2020",
    company_id: network.id
)
c9 = Contact.create(
    first_name: "Leo",
    last_name: "Young",
    email: "leo@email.com",
    title: "Owner",
    phone: "703-589-9000",
    company_id: acadia.id
)
c10 = Contact.create(
    first_name: "Catherine",
    last_name: "Lee",
    email: "catherine@email.com",
    title: "HR Manager",
    phone: "703-425-6777",
    company_id: willer.id
)




ja1 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("November 19 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[1]}",
    notes: "Had a good conversation with #{c1.first_name}. Work enviroment sounds nice and type of work they do seem very interesting.",
    application_name: "#{codeoverflow.name} Entry Level SE",
    applied_location: "#{codeoverflow.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: codeoverflow.id
)
ja2 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("November 30 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "It seems I can do different things, opportunities, once I'm in the company. A potential growth opportunities. They have offices throught out the US.",
    application_name: "#{amazon.name} Web Developer",
    applied_location: "#{amazon.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: amazon.id
)
ja3 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("November 20 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "This is a coaching position for SE program. They are looking for 2 people by end of the year.",
    application_name: "#{flatiron.name} SE Coach",
    applied_location: "#{flatiron.name} website",
    interest_level: 3,
    user_id: u1.id,
    company_id: flatiron.id,
)
ja4 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("December 4 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[1]}",
    notes: "#{c4.first_name} contacted me for possible web development position in DC and in Arlington. Found me through LinkedIn.",
    application_name: "#{recruit.name}",
    applied_location: "#{comm_type[0]} it to her directly",
    interest_level: 3,
    user_id: u1.id,
    company_id: recruit.id,
)
ja5 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("November 19 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "",
    application_name: "#{google.name}",
    applied_location: "#{comm_type[0]} it to her directly",
    interest_level: 3,
    user_id: u1.id,
    company_id: google.id,
)



jc1 = JobContact.create(
    job_application_id: ja1.id,
    contact_id: c1.id
)
jc2 = JobContact.create(
    job_application_id: ja1.id,
    contact_id: c2.id
)
jc3 = JobContact.create(
    job_application_id: ja2.id,
    contact_id: c3.id
)
jc4 = JobContact.create(
    job_application_id: ja2.id,
    contact_id: c4.id
)
jc5 = JobContact.create(
    job_application_id: ja3.id,
    contact_id: c5.id
)
jc6 = JobContact.create(
    job_application_id: ja4.id,
    contact_id: c6.id
)


f1 = FollowUp.create(
    follow_up_date: Date.parse("December 2 2020"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja1.id 
)
f2 = FollowUp.create(
    follow_up_date: Date.parse("December 1 2020"),
    contact_type: "#{comm_type[1]}",
    job_application_id: ja2.id 
)
f2a = FollowUp.create(
    follow_up_date: Date.parse("December 15 2020"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja2.id 
)
f3 = FollowUp.create(
    follow_up_date: Date.parse("December 10 2020"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja3.id 
)


i1 = Interview.create(
    interview_date: Time.parse("January 5 2021 14:00"),
    information: "#{comm_type[2]} interview at 2pm with #{c1.first_name}(HR) and #{c2.first_name}(PM). #{c1.first_name} will send the call info",
    job_application_id: ja1.id 
)
i2 = Interview.create(
    interview_date: Time.parse("December 9 2020 10:00"),
    information: "#{comm_type[1]} call at 10am with #{c6.first_name} to get to know each other",
    job_application_id: ja4.id 
)
