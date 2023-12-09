<div class="aa-product-catg-pagination">
  <nav>
    <ul class="pagination">
    @if (true)
      <li>
        <a href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
    @endif
    @for ($i = 1; $i <=  3; $i++)
      <li class=""><a href="#">{!! $i !!}</a></li>
    @endfor
    @if (true)
      <li>
        <a href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    @endif
      
    </ul>
  </nav>
</div>