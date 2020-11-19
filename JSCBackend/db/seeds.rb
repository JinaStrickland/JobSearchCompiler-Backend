
User.destroy_all
Company.destroy_all


codeoverflow = Company.create(
    name: "CodeOverFlow",
    street_address: "2000 S Street, NW"
    city: "Washington"
    state: "DC"
    zipcode: 20036
)
voeing = Company.create(
    name: "Voeing",
    street_address: "321 Best Avenue"
    city: "Fairfax"
    state: "VA"
    zipcode: 22033
)
amazn = Company.create(
    name: "Amazin",
    street_address: "900 Owen Boulevard"
    city: "Arlington"
    state: "VA"
    zipcode: 22202
)
flaton = Company.create(
    name: "Flaton",
    street_address: "111 Iron Street, NW"
    city: "Washington"
    state: "DC"
    zipcode: 20005
)


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
u3 = User.create(
    first_name: "Bob",
    last_name: "Jones",
    email: "bob@email.com",
    password_digest: "bob",
    image: "https://www.latrobemassagecentre.com.au/wp-content/uploads/2016/04/Male-Image.jpg",
)
u4 = User.create(
    first_name: "John",
    last_name: "Doe",
    email: "john@email.com",
    password_digest: "john",
    image: "https://john-darke.co.uk/wp-content/uploads/2019/04/male-image.jpg",
)