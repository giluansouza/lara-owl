@csrf
<div class="flex flex-col gap-2">
  <label for="name">Nome</label>
  <input class="rounded-md" type="text" name="name" id="name" value="{{ $user->name ?? old('name') }}">
</div>
<div class="flex flex-col gap-2">
  <label for="email">E-mail</label>
  <input class="rounded-md" type="email" name="email" id="email" value="{{ $user->email ?? old('email') }}">
</div>
<div class="flex flex-col gap-2">
  <label for="password">Senha</label>
  <input class="rounded-md" type="password" name="password" id="password">
</div>
<div class="mt-4">
  <button class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" type="submit">Confirmar</button>
</div>