//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by hasan bilgin on 10.11.2023.
//

import SwiftUI

struct SecondView: View {
    
    @State var path : [Dog] = []
    
    var body: some View {
        
//        NavigationStack{
//            List(dogs) {dog in
//                NavigationLink(dog.name,value: dog)
//            }.navigationDestination(for: Dog.self) { dog in
//                Text(dog.name)
//            }
//        }
        
        //path burda tıklandığında gidilcek link sırası düşünebilir
        NavigationStack(path: $path){
            List(dogs) {dog in
                NavigationLink(dog.name,value: dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack {
                    Text(dog.name)
                    /*
                    Button("Go Back"){
                        //tıklandığında
                        //popToRootViewController aynı muhabbettir
                        //ilk açılan ekrana gerlir demek
                        //kaçıncı ekranda olursa olsun ilk ekrana gelir demek
                        //istediğin ekrana döndürmek içinde path farklı kod yazılabilir
                        self.path = []
                        
                    }
                    */
                    
                    Button("Add to Path"){
                        //butona basıldığında dogs[1] ne ise onu açar açılan ekranda yine basılırsa tepkisiz kalır
                        path = [dogs[0],dogs[1]]
                    }
                }
              
            }
        }
    }
}

#Preview {
    SecondView()
}
