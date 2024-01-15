//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by hasan bilgin on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        NavigationView {
        //            List{
        //                //grup açtık
        //                Section("Dogs"){
        //                    ForEach(dogs){ dog in
        //                        NavigationLink {
        //                            //                    SecondView(selectedDog: dog)
        //                            //görünüm olmasa dahi text te bir görünümdür ondada açar
        //                            //SecondView(selectedDog: dog) ile yapılır ama Cat kısmında hata vericektir tmm açılan ekranda vat için yapır ve if le düzeltilir ama kolay yolu var oda NavigationStack tir
        //                            Text(dog.name)
        //                        } label: {
        //                            Text(dog.name)
        //                        }
        //                    }
        //                }
        //                Section("Cats"){
        //                    ForEach(cats){ cat in
        //                        NavigationLink {
        //
        //                            Text(cat.name)
        //                        } label: {
        //                            Text(cat.name)
        //                        }
        //                    }
        //                }
        //            }
        //        }
        
        
        NavigationStack {
            List{
                //grup açtık
                Section("Dogs"){
                    ForEach(dogs){ dog in
                        //NavigationLink(dog.name, value: dog) dog.name görüncek başka görünümde açılması için dog gönderilcek
                        //sorunu tabiki çözmüyo dog istedi catte yine hata alıcaz ama daha kolaylaştırıyo diye devam ediyoruz
                        NavigationLink(dog.name, value: dog)
                    }
                }
                Section("Cats"){
                    ForEach(cats){ cat in
                        NavigationLink(cat.name, value: cat)
                    }
                }
                //navigasyonun hedef yerini seçebiliyoruz 
                //for kısmında Deg Hashable ordan geliyo
                //bir nevi doga tıkladığında ndog name istiyoruz
                //yine SecondView kullanmadık dikket eçekeriz
            }.navigationDestination(for: Dog.self) { dog  in
                Text(dog.name)
            }
            .navigationDestination(for: Cat.self) { cat  in
                Text(cat.name)
            }
        }
        
        
    }
    
}

#Preview {
    ContentView()
}
