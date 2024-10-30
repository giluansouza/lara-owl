@csrf
<div class="flex flex-col gap-2">
  <label for="name">Nome</label>
  <input class="rounded-md" type="text" name="name" id="name" value="{{ $people->name ?? old('name') }}">
</div>
<div class="flex flex-col gap-2">
  <label for="cpf">E-mail</label>
  <input class="rounded-md" type="text" name="cpf" id="cpf" value="{{ $people->cpf ?? old('cpf') }}">
</div>
<div class="flex flex-col gap-2">
  <label for="image">Url da imagem</label>
  <input class="rounded-md" type="text" name="image" id="image" placeholder="Url da imagem" value="{{ $people->image ?? old('image') }}">
</div>
<div class="mt-4">
  <button class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" type="submit">Confirmar</button>
</div>