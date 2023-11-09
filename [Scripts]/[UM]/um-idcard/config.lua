Config = {};

Config.IdCardSettings = {
   closeKey = 'Backspace',
   autoClose = {
      status = false, -- or true
      time = 3000
   }
};

Config.Licenses = {
   ['id_card'] = {
      header = 'ID Card',
      background = '#a0eca2ff',
      prop = 'prop_franklin_dl'
   },
   ['driver_license'] = {
      header = 'Driver License',
      background = '#e59595ff',
      prop = 'prop_franklin_dl',
   },
   ['weaponlicense'] = {
      header = 'Weapon License',
      background = '#c7ffe5',
      prop = 'prop_franklin_dl',
   },
   ['lawyerpass'] = {
      header = 'Lawyer Pass',
      background = '#f9c491',
      prop = 'prop_cs_r_business_card'
   },
}
