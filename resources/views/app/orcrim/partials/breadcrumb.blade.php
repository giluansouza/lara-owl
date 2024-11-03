<nav class="my-2">
  <ul class="flex flex-row items-center gap-2">
    <li>
      <a class="text-blue-800 dark:text-blue-400 hover:underline" href="{{ route('dashboard') }}">Home</a> </li>
    <li>
      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
      </svg>
    </li>
    @if(isset($currentPage) && ($currentPage !== 'Organizações'))
      <li><a class="text-blue-800 dark:text-blue-400 hover:underline" href="{{ route('gc.index') }}">Organizações</a></li>
      <li>
        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
        </svg>
      </li>
    @endif
      <li class="text-gray-400">{{ $currentPage }}</li>
  </ul>        
</nav>