def create_serie(num)
  array = [1,2]
 (num - 2).times {
   array << array[-1] + array[-2]
 }
 array
end
def array_imp(array)
  new_array = []
  array.each do |element|
    if element % 2 != 0
      new_array << element
    end
  end
  new_array
end
def suma_arreglo(array)
  suma = 0
  array.each do |element|
    suma += element
  end
  suma
end

fibonacci = create_serie(10)
impares = array_imp(fibonacci)
resultado = suma_arreglo(impares)
puts resultado
