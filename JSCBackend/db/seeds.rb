User.destroy_all
Company.destroy_all
Contact.destroy_all
JobApplication.destroy_all
JobContact.destroy_all 
FollowUp.destroy_all 
Interview.destroy_all

comm_type = ["Email", "Phone", "Zoom", "In Person", "LikedIn Message"] 
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


triblio = Company.create(
    name: "Triblio",
    street_address: "11600 Sunrise Valley Drive Suite #100",
    city: "Reston",
    state: "VA",
    zipcode: 20191
)
customink = Company.create(
    name: "Custom Ink",
    street_address: "2910 Distric Ave #300",
    city: "Fairfax",
    state: "VA",
    zipcode: 22031
)
forumone = Company.create(
    name: "Forum One",
    street_address: "2231 Crystal Drive",
    city: "Arlington",
    state: "VA",
    zipcode: 22202
)
splunk = Company.create(
    name: "Splunk",
    street_address: "7900 Tysons One Pl Suite 1100",
    city: "McLean",
    state: "VA",
    zipcode: 22102
)
amazon = Company.create(
    name: "Amazon",
    street_address: "12900 Worldgate Drive",
    city: "Herndon",
    state: "VA",
    zipcode: 20170
)
google = Company.create(
    name: "Google",
    street_address: "1901 Reston Metro Plaza",
    city: "Reston",
    state: "VA",
    zipcode: 20190
)
cvent = Company.create(
    name: "Cvent",
    street_address: "1765 Greensboro Station Pl 7th Floor",
    city: "McLean",
    state: "VA",
    zipcode: 22012
)
ctg = Company.create(
    name: "Capital Technology Group(CTG)",
    street_address: "708 Lamberton Drive",
    city: "Silver Spring",
    state: "MD",
    zipcode: 20902
)
flatiron = Company.create(
    name: "Flatiron",
    street_address: "1440 G Street, NW",
    city: "Washington",
    state: "DC",
    zipcode: 20005
)
armedia = Company.create(
    name: "Armedia",
    street_address: "8221 Old Courthouse Road, Suite 300",
    city: "Vienna",
    state: "VA",
    zipcode: 22181
)



c1 = Contact.create(
    first_name: "Anna",
    last_name: "Lettle",
    email: "anna@email.com",
    title: "HR Manager",
    phone: "703-859-2727",
    company_id: triblio.id
)
c2 = Contact.create(
    first_name: "Rick",
    last_name: "Slon",
    email: "rick@email.com",
    title: "HR Manager",
    phone: "703-976-1000",
    company_id: customink.id
)
c3 = Contact.create(
    first_name: "Bob",
    last_name: "Jones",
    email: "bob@email.com",
    title: "HR Manager",
    phone: "703-221-4321",
    company_id: forumone.id
)
c4 = Contact.create(
    first_name: "Rebecca",
    last_name: "Lead",
    email: "rebecca@email.com",
    title: "Sr Recruiter",
    phone: "703-777-3333",
    company_id: splunk.id
)
c5 = Contact.create(
    first_name: "John",
    last_name: "Lopez",
    email: "john@email.com",
    title: "Recruiter",
    phone: "703-213-1212",
    company_id: amazon.id
)
c6 = Contact.create(
    first_name: "Larry",
    last_name: "Williams",
    email: "larry@email.com",
    title: "HR Director",
    phone: "240-221-1111",
    company_id: google.id
)
c7 = Contact.create(
    first_name: "Olive",
    last_name: "Cava",
    email: "olive@email.com",
    title: "Sr HR Manager",
    phone: "703-859-2828",
    company_id: cvent.id
)
c8 = Contact.create(
    first_name: "David",
    last_name: "Anderson",
    email: "david@email.com",
    title: "HR Manager",
    phone: "240-204-2020",
    company_id: ctg.id
)
c9 = Contact.create(
    first_name: "Leo",
    last_name: "Young",
    email: "leo@email.com",
    title: "HR Manager",
    phone: "202-589-9000",
    company_id: flatiron.id
)
c10 = Contact.create(
    first_name: "Jack",
    last_name: "Clark",
    email: "jack@email.com",
    title: "HR Manager",
    phone: "703-425-6777",
    company_id: armedia.id
)



ja1 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 1 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[2]}",
    notes: "The type of work they do is very interesting",
    application_name: "#{triblio.name} Software Developer",
    applied_location: "#{triblio.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: triblio.id
)
ja2 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 7 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Lots of opportunities within the company and growth opportunities",
    application_name: "#{customink.name} Front-end React Developer",
    applied_location: "#{customink.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: customink.id
)
ja3 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 9 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Utilizes React.",
    application_name: "#{forumone.name} Front End Engineer",
    applied_location: "#{forumone.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: forumone.id,
)
ja4 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 12 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "React and TypeScript",
    application_name: "#{splunk.name} Frontend Developer",
    applied_location: "Referral Link at #{splunk.name}",
    interest_level: 4,
    user_id: u1.id,
    company_id: splunk.id,
)
ja5 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 13 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Asking for least 2 year of expereince.  Need to impress them with my soft skills.",
    application_name: "#{amazon.name} Jr Web Developer",
    applied_location: "#{amazon.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: amazon.id,
)
ja6 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 16 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fit the skill requirement",
    application_name: "#{google.name} Frontend engineer",
    applied_location: "#{google.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: google.id,
)
ja7 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 19 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Seems like a great place to work",
    application_name: "#{cvent.name} Frontend Web Developer",
    applied_location: "#{cvent.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: cvent.id,
)
ja8 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 28 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Sounds like a great place to work",
    application_name: "#{ctg.name} Front End Developer",
    applied_location: "#{ctg.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: ctg.id,
)
ja9= JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("April 30 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Coaching students",
    application_name: "#{flatiron.name} SE Coach",
    applied_location: "#{flatiron.name} website",
    interest_level: 4,
    user_id: u1.id,
    company_id: flatiron.id,
)
ja10 = JobApplication.create(
    communication_type: "#{comm_type[4]}",
    resume_sent: Date.parse("May 6 2021"),
    resume: "",
    cover_letter: "",
    status: "#{status[0]}",
    notes: "Fast growing company with many opportunities for advancement",
    application_name: "#{armedia.name} Entry Level Frontend Engineer",
    applied_location: "#{armedia.name} website",
    interest_level: 5,
    user_id: u1.id,
    company_id: armedia.id,
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




f1 = FollowUp.create(
    follow_up_date: Date.parse("April 8 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja1.id 
)
f2 = FollowUp.create(
    follow_up_date: Date.parse("April 14 2021"),
    contact_type: "#{comm_type[1]}",
    job_application_id: ja2.id 
)
f3 = FollowUp.create(
    follow_up_date: Date.parse("April 16 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja3.id 
)
f4 = FollowUp.create(
    follow_up_date: Date.parse("April 19 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja4.id 
)
f5 = FollowUp.create(
    follow_up_date: Date.parse("April 23 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja5.id 
)
f6 = FollowUp.create(
    follow_up_date: Date.parse("April 27 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja6.id 
)
f7 = FollowUp.create(
    follow_up_date: Date.parse("May 5 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja7.id 
)
f8 = FollowUp.create(
    follow_up_date: Date.parse("May 7 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja8.id 
)
f9 = FollowUp.create(
    follow_up_date: Date.parse("May 11 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja9.id 
)
f10 = FollowUp.create(
    follow_up_date: Date.parse("May 13 2021"),
    contact_type: "#{comm_type[0]}",
    job_application_id: ja10.id 
)




i1 = Interview.create(
    interview_date: Time.local(2021, "apr", 28, 16, 0, 0),
    # interview_date: Time.parse("14:00", DateTime.parse("February 8 2021"))
    information: "#{comm_type[2]} interview with #{c1.first_name}(HR). #{c1.first_name} will send the call info",
    job_application_id: ja1.id 
)
i2 = Interview.create(
    interview_date: Time.local(2021, "may", 4, 9, 0, 0), 
    information: "Interview with #{c2.first_name}",
    job_application_id: ja2.id 
)
i3 = Interview.create(
    interview_date: Time.local(2021, "may", 6, 11, 0, 0), 
    information: "Interview with #{c3.first_name} on the #{comm_type[2]}.",
    job_application_id: ja3.id 
)
i4 = Interview.create(
    interview_date: Time.local(2021, "may", 13, 14, 0, 0), 
    information: "Initial #{comm_type[1]} interview with #{c4.first_name}.",
    job_application_id: ja4.id 
)
