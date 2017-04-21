<ui-dropdown class="ui fluid {prop('multiple')} {prop('search')} {prop('selection')} dropdown {opts.class}">
  
  <input type="hidden" name={opts.name}>
  
  <i class="dropdown icon"></i>
  
  <div class="default text">{opts.placeholder}</div>
  
  <div class="menu">
    <yield />
  </div>

  <script>
    this.on('mount', function() {
        $(this.root).dropdown()
    })

    prop(name) {
      return opts.hasOwnProperty(name) ? name : ""
    }
  </script>

</ui-dropdown>