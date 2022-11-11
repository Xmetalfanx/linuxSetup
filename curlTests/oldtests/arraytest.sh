clear 

array=(
    'foobar'
    'barfoo'
    "foo"
)

if [[ "${array[@]}" =~ *"foo"* ]]  ; then
    echo "found"
else 
    echo "not found"
fi 
