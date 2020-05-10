# Use volume key selection for choosing the desired state
echo " "
echo "- Press the appropriate volume button to make your selection:"
echo " "
echo "  Vol + / Up   = Permissive"
echo "  Vol - / Down = Enforcing"
if $VKSEL; then
  echo " "
  echo "- Selected Mode: Permissive"
else
  echo " "
  echo "- Selected Mode: Enforcing"
  sed -i 's/0/1/g' $MODPATH/service.sh
fi

# Remove stuff that doesn't belong in the module directory
echo " "
rm $MODPATH/LICENSE
