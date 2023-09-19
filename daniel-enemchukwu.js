// creting entities
db.createCollection('products')
db.createCollection('users')
db.createCollection('admin')
db.createCollection('category')


// inserting records
db.products.insertMany(
    [
    { id: 1, name: 'Nike Shoe', price: 3000, size: 'medium',  descripiton: 'A pair of white sneakers', SKU: 6675, created_at: Date() }
    ],
    [
    { id: 3, name: 'Addida Mob', price: 5000, size: 'small',  descripiton: 'A pair of black sneakers', SKU: 5432, created_at: Date() }
    ]
    );
db.users.insertOne({ id: 1, name: 'Ann Festus', userid: 234, password: 'zxsr4536', email: 'ann@gmail.com',  created_at: Date() });
db.admin.insertOne({ id: 1, name: 'Abraham Lincon', password: 'xz@!!wsyd6', email: 'linc@gmail.com',  created_at: Date() });
db.category.insertOne({ id: 1, name: 'Men Shoes', slug: 'men-shoes', image: 'placeholder.png',  created_at: Date() });

// get entities
db.products.find({ id: 1 }, { id: 3 })

// update entities
db.products.updateMany(
  [
    { id: 1, },
    { $set: { name: 'Nike Shoe Max', price: 5000 } } 
  ], 
  [
    { id: 3, },
    { $set: { name: 'Addidas Pro Mob', price: 7000 } } 
  ]
);



// delete entities
db.products.deleteMany(
    { id: 1, },
    { id: 3, }  
);



