
User.destroy_all
Company.destroy_all
Contact.destroy_all
JobApplication.destroy_all
JobContact.destroy_all 
FollowUp.destroy_all 
Interview.destroy_all



comm_type = ["Email", "Phone", "Zoom", "In Person"]
status = [ "Sent Resume", "Interview Scheduled", "Wating...", "Another Round of Interview Scheduled", "I Did It! Got the Offer",  "Regrets by Me", "Regrets by Them", "With Pleasure!", "Bummer...Next!", "On Hold"]

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
    name: "Amazon",
    street_address: "900 Owen Boulevard",
    city: "Arlington",
    state: "VA",
    zipcode: 22202
)
flatiron = Company.create(
    name: "Flatiron",
    street_address: "111 Tron Street, NW",
    city: "Washington",
    state: "DC",
    zipcode: 20005
)
recruitech = Company.create(
    name: "RecruiTech",
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
newtech = Company.create(
    name: "NewTech",
    street_address: "500 Newtech Circle",
    city: "Reston",
    state: "VA",
    zipcode: 22036
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
    company_id: recruitech.id
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
c11 = Contact.create(
    first_name: "Jack",
    last_name: "Clark",
    email: "jack@email.com",
    title: "HR Manager",
    phone: "703-425-6777",
    company_id: newtech.id
)




ja1 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 1 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Had a good conversation with #{c1.first_name}. Work enviroment sounds nice and type of work they do seem very interesting.",
    application_name: "#{codeoverflow.name} Frontend Web Developer",
    applied_location: "#{codeoverflow.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: codeoverflow.id
)
ja2 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 3 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "It seems I can do different things, opportunities, once I'm in the company. A potential growth opportunities. They have offices throught out the US.",
    application_name: "#{amazon.name} Entry Level SE",
    applied_location: "#{amazon.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: amazon.id
)
ja3 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 4 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "This is a coaching position for SE program. They are looking for 2 people by end of the year.",
    application_name: "#{flatiron.name} Coach",
    applied_location: "#{flatiron.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: flatiron.id,
)
ja4 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 5 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "#{c4.first_name} contacted me for possible web development position in DC and in Arlington. Found me through LinkedIn.",
    application_name: "#{recruitech.name}",
    applied_location: "Email it to #{recruitech.name} directly",
    interest_level: 4,
    user_id: u1.id,
    company_id: recruitech.id,
)
ja5 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 9 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Asking for least 2 year of expereince.  Need to impress them with my soft skills.",
    application_name: "#{google.name} Jr Web Developer",
    applied_location: "#{google.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: google.id,
)
ja6 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 10 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fit the skill requirement",
    application_name: "#{boeing.name} SE Analyst",
    applied_location: "#{boeing.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: boeing.id,
)
ja7 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 12 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fit the skill requirement",
    application_name: "#{orbit.name} Frontend Web Developer",
    applied_location: "#{orbit.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: orbit.id,
)
ja8 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 15 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "It sounds like a great place to work",
    application_name: "#{network.name} Web Developer",
    applied_location: "#{network.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: network.id,
)
ja9= JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 16 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fit all the skills listed on the application",
    application_name: "#{acadia.name} Entry Level Web Dev",
    applied_location: "#{acadia.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: acadia.id,
)
ja10 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 17 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fit all the skills listed on the application",
    application_name: "#{willer.name} Software Engineer",
    applied_location: "#{willer.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: willer.id,
)
ja11 = JobApplication.create(
    communication_type: "#{comm_type[0]}",
    resume_sent: Date.parse("February 19 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fast growth opportunities",
    application_name: "#{newtech.name} Frontend Web Dev",
    applied_location: "#{newtech.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: newtech.id,
)



jc1 = JobContact.create(
    job_application_id: ja1.id,
    contact_id: c1.id
)
jc2 = JobContact.create(
    job_application_id: ja2.id,
    contact_id: c2.id
)
jc3 = JobContact.create(
    job_application_id: ja3.id,
    contact_id: c3.id
)
jc4 = JobContact.create(
    job_application_id: ja4.id,
    contact_id: c4.id
)
jc5 = JobContact.create(
    job_application_id: ja5.id,
    contact_id: c5.id
)
jc6 = JobContact.create(
    job_application_id: ja6.id,
    contact_id: c6.id
)
jc7 = JobContact.create(
    job_application_id: ja7.id,
    contact_id: c7.id
)
jc8 = JobContact.create(
    job_application_id: ja8.id,
    contact_id: c8.id
)
jc9 = JobContact.create(
    job_application_id: ja9.id,
    contact_id: c9.id
)
jc10 = JobContact.create(
    job_application_id: ja10.id,
    contact_id: c10.id
)
jc11 = JobContact.create(
    job_application_id: ja11.id,
    contact_id: c11.id
)


f1 = FollowUp.create(
    follow_up_date: Date.parse("February 15 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja1.id 
)
f2 = FollowUp.create(
    follow_up_date: Date.parse("February 17 2021"),
    contact_type: "#{comm_type[1]}",
    job_application_id: ja2.id 
)
# f2a = FollowUp.create(
#     follow_up_date: Date.parse("February 22 2021"),
#     contact_type: "#{comm_type[0]}",
#     job_application_id: ja2.id 
# )
f3 = FollowUp.create(
    follow_up_date: Date.parse("February 18 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja3.id 
)
f4 = FollowUp.create(
    follow_up_date: Date.parse("February 19 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja4.id 
)
f5 = FollowUp.create(
    follow_up_date: Date.parse("February 23 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja5.id 
)
# f5a = FollowUp.create(
#     follow_up_date: Date.parse("December 17 2020"),
#     contact_type: "#{comm_type[0]}",
#     job_application_id: ja5.id 
# )
f6 = FollowUp.create(
    follow_up_date: Date.parse("February 24 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja6.id 
)
f7 = FollowUp.create(
    follow_up_date: Date.parse("February 26 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja7.id 
)
# f7a = FollowUp.create(
#     follow_up_date: Date.parse("December 8 2020"),
#     contact_type: "#{comm_type[0]}",
#     job_application_id: ja7.id 
# )
f8 = FollowUp.create(
    follow_up_date: Date.parse("March 1 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja8.id 
)
# f8a = FollowUp.create(
#     follow_up_date: Date.parse("March 16 2021"),
#     contact_type: "#{comm_type[0]}",
#     job_application_id: ja8.id 
# )
f9 = FollowUp.create(
    follow_up_date: Date.parse("March 2 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja9.id 
)
f10 = FollowUp.create(
    follow_up_date: Date.parse("March 3 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja10.id 
)
# f10a = FollowUp.create(
#     follow_up_date: Date.parse("March 2 2021"),
#     contact_type: "#{comm_type[0]}",
#     job_application_id: ja10.id 
# )
f11 = FollowUp.create(
    follow_up_date: Date.parse("March 5 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja11.id 
)



i1 = Interview.create(
    interview_date: Time.local(2021, "feb", 8, 14, 0, 0),
    information: "#{comm_type[2]} interview at 2pm with #{c1.first_name}(HR). #{c1.first_name} will send the call info",
    job_application_id: ja1.id 
)
i3 = Interview.create(
    interview_date: Time.local(2021, "feb", 10, 10, 0, 0), 
    information: "First interview with Flatiron's campus director #{c3.first_name}",
    job_application_id: ja3.id 
)
i4 = Interview.create(
    interview_date: Time.local(2021, "feb", 12, 9, 0, 0), 
    information: "Get to know each other meeting with #{c4.first_name} at Starbucks",
    job_application_id: ja4.id 
)


# i1 = Interview.create(
#     interview_date: Time.parse("14:00", DateTime.parse("February 8 2021")),
#     information: "#{comm_type[2]} interview at 2pm with #{c1.first_name}(HR). #{c1.first_name} will send the call info",
#     job_application_id: ja1.id 
# )
# i3 = Interview.create(
#     interview_date: Time.parse("10:00", DateTime.parse("February 10 2021")), 
#     information: "First interview with Flatiron's campus director #{c3.first_name}",
#     job_application_id: ja3.id 
# )
# i4 = Interview.create(
#     interview_date: Time.parse("09:00", DateTime.parse("February 12 2021")), 
#     information: "Get to know each other meeting with #{c4.first_name} at Starbucks",
#     job_application_id: ja4.id 
# )

