<template>
  <iframe
    :src="iframeSrc"
    width="100%"
    height="1000px"
    frameborder="0"
  />
</template>

<script>
export default {
// http://localhost:4380/api/swagger-ui.html
  name: 'SysRole',
  data() {
    return {
      iframeSrc: ''
    }
  },
  mounted() {
     this.iframeSrc = window.location.origin + '/api/swagger-ui.html'
  },
  methods: {}
}
</script>
