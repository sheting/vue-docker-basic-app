<template lang="pug">
  v-layout
    v-flex(xs12, sm6, offset-sm3)
      v-card
        v-img.white--text(height="200px", src="https://cdn.vuetifyjs.com/images/cards/docks.jpg")
          v-container(fill-height, fluid)
            v-layout(fill-height)
              v-flex(xs12, align-end, flexbox)
                span.headline Top 10 Australian beaches
        v-card-title
          div
            span.grey--text Number 10
            span Whitehaven Beach
            span Whitsunday Island, Whitsunday Islands
        v-card-actions
          v-btn(flat, color="orange") Share
          v-btn(flat, color="orange") Explore
</template>

<script>
export default {
  name: 'login',
  data () {
    return {}
  },
  methods: {
  }
}
</script>
<style scoped lang="postcss">
</style>