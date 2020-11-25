
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
    last_name: "Williams",
    email: "suzy@email.com",
    password_digest: "suzy",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
)


codeoverflow = Company.create(
    name: "CodeOverFlow",
    street_address: "2000 S Street, NW",
    city: "Washington",
    state: "DC",
    zipcode: 20036
)
amazn = Company.create(
    name: "Amazin",
    street_address: "900 Owen Boulevard",
    city: "Arlington",
    state: "VA",
    zipcode: 22202
)
flaron = Company.create(
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


c1 = Contact.create(
    first_name: "John",
    last_name: "Doe",
    email: "john@email.com",
    title: "HR Manager",
    phone: "202-859-2727",
    company_id: codeoverflow.id
)
c2 = Contact.create(
    first_name: "Anna",
    last_name: "Lee",
    email: "anna@email.com",
    title: "Project Manager",
    phone: "202-859-2828",
    company_id: codeoverflow.id
)
c3 = Contact.create(
    first_name: "Rick",
    last_name: "Slon",
    email: "rick@email.com",
    title: "HR Manager",
    phone: "202-221-4321",
    company_id: amazn.id
)
c4 = Contact.create(
    first_name: "Larry",
    last_name: "Beek",
    email: "larry@email.com",
    title: "Senior Engineer",
    phone: "202-221-1111",
    company_id: amazn.id
)
c5 = Contact.create(
    first_name: "Bob",
    last_name: "Jones",
    email: "bob@email.com",
    title: "HR Manager",
    phone: "703-703-4567",
    company_id: flaron.id
)
c6 = Contact.create(
    first_name: "Rebecca",
    last_name: "Lee",
    email: "rebecca@email.com",
    title: "Sr HR Manager / VP",
    phone: "703-777-3333",
    company_id: recruit.id
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
    application_name: "#{amazn.name} Web Developer",
    applied_location: "#{amazn.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: amazn.id
)
ja3 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("November 20 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "This is a coaching position for SE program. They are looking for 2 people by end of the year.",
    application_name: "#{flaron.name} SE Coach",
    applied_location: "#{flaron.name} website",
    interest_level: 3,
    user_id: u1.id,
    company_id: flaron.id,
)
ja4 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("December 4 2020"),
    resume: "",
    cover_letter: "",
    status: "#{status[1]}",
    notes: "#{c1.first_name} contacted me for possible web development position in DC and in Arlington. Found me through LinkedIn.",
    application_name: "#{recruit.name}",
    applied_location: "#{comm_type[0]} it to her directly",
    interest_level: 3,
    user_id: u1.id,
    company_id: recruit.id,
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
    interview_date: Date.parse("January 5 2021"),
    information: "#{comm_type[2]} interview at 2pm with #{c1.first_name}(HR) and #{c2.first_name}(PM). #{c1.first_name} will send the call info",
    job_application_id: ja1.id 
)
i2 = Interview.create(
    interview_date: Date.parse("December 9 2020"),
    information: "#{comm_type[1]} call at 10am with #{c6.first_name} to get to know each other",
    job_application_id: ja4.id 
)
