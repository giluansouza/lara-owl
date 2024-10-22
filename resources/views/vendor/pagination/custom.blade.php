@if ($paginator->hasPages())
    <nav>
        <div class="flex flex-row justify-center">
            {{-- Botão Anterior --}}
            @if ($paginator->onFirstPage())
                <a class="disabled"><span>&laquo; Anterior</span></a>
            @else
                <a href="{{ $paginator->previousPageUrl() }}" rel="prev">&laquo; Anterior</a>
            @endif

            {{-- Links das Páginas --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <a class="disabled"><span>{{ $element }}</span></a>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <a class="active"><span>{{ $page }}</span></a>
                        @else
                            <a href="{{ $url }}">{{ $page }}</a>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Botão Próximo --}}
            @if ($paginator->hasMorePages())
                <a href="{{ $paginator->nextPageUrl() }}" rel="next">Próxima &raquo; </a>
            @else
                <a class="disabled"><span>Próxima &raquo; </span></a>
            @endif
        </div>
    </nav>
@endif
