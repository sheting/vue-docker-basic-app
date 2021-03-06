import Vue from 'vue'
import {
  Vuetify,
  VApp,
  VNavigationDrawer,
  VFooter,
  VSubheader,
  VList,
  VBtn,
  VIcon,
  VBadge,
  VCard,
  VGrid,
  VToolbar,
  VTabs,
  VAlert,
  VSlider,
  VMenu,
  VDataTable,
  VProgressLinear,
  VProgressCircular,
  VForm,
  VDivider,
  VTextField,
  VPagination,
  VStepper,
  VTooltip,
  VSelect,
  VDialog,
  VSwitch,
  VCheckbox,
  VRadioGroup,
  VChip,
  VSnackbar,
  VImg,
  transitions
} from 'vuetify'
import '@/assets/styles/app.styl'
Vue.use(Vuetify, {
  components: {
    VApp,
    VNavigationDrawer,
    VFooter,
    VSubheader,
    VList,
    VBtn,
    VIcon,
    VBadge,
    VCard,
    VGrid,
    VToolbar,
    VTabs,
    VAlert,
    VSlider,
    VMenu,
    VDataTable,
    VProgressLinear,
    VProgressCircular,
    VForm,
    VDivider,
    VTextField,
    VPagination,
    VStepper,
    VTooltip,
    VSelect,
    VDialog,
    VSwitch,
    VCheckbox,
    VRadioGroup,
    VChip,
    VSnackbar,
    VImg,
    transitions
  },
  theme: {
    primary: '#006cff',
    secondary: '#424242',
    accent: '#82B1FF',
    error: '#FF5252',
    info: '#2196F3',
    success: '#4CAF50',
    warning: '#FFC107'
  },
  icons: {
    checkboxOn: 'far fa-check-square',
    checkboxOff: 'far fa-square',
    radioOn: 'far fa-dot-circle',
    radioOff: 'far fa-circle',
    dropdown: 'fas fa-angle-down',
    prev: 'fas fa-chevron-left',
    next: 'fas fa-chevron-right'
  }
})
