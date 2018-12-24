admin = User.create! name: 'Admin', username: 'admin', email: 'admin@gmail.com', password: 'topsecret', password_confirmation: 'topsecret'
admin.add_role "admin"

User.create! name: 'Joao Carlos', username: 'jcottobboni',email: 'jcottobboni@gmail.com', password: 'topsecret',
             password_confirmation: 'topsecret'
User.create! name: 'Maria',username: 'maria' , email: 'maria@gmail.com', password: 'topsecret', password_confirmation: 'topsecret'
User.create! name: 'Tiago', username: 'tiago', email: 'tiago@gmail.com', password: 'topsecret', password_confirmation: 'topsecret'
