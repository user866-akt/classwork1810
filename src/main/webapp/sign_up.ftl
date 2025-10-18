<html lang="ru">
<#include "base.ftl">
<#macro title>Регистрация</#macro>
<#macro scripts>
    <script>
        var timeout
        $(document).on("input", "#login-input", function () {
            const input = $("#login-input").val()
            clearTimeout(timeout)
            timeout = setTimeout(() => {
                $.get("/ajax/sign_up?login=" + input, function (response) {
                    $("#resp-text").text(response)
                })
            }, 200)
        })
    </script>
</#macro>
<#macro content>
    <div id="registration_container">
        <h2>Создание аккаунта</h2>

        <form method="post" action="/sign_up" enctype="multipart/form-data" class="registration-form">
            <div class="form-group">
                <label for="login-input">Логин:</label>
                <input type="text" id="login-input" name="login" placeholder="Придумайте логин" required>
                <div id="resp-text" class="response-message"></div>
            </div>

            <div class="form-group">
                <label for="password">Пароль:</label>
                <input type="password" id="password" name="password" placeholder="Создайте пароль" required>
            </div>

            <div class="form-group">
                <label for="name">Имя:</label>
                <input type="text" id="name" name="name" placeholder="Ваше имя">
            </div>

            <div class="form-group">
                <label for="lastname">Фамилия:</label>
                <input type="text" id="lastname" name="lastname" placeholder="Ваша фамилия">
            </div>

            <div class="form-group">
                <label for="file">Аватар:</label>
                <input type="file" id="file" name="file" class="file-input">
            </div>

            <div class="form-actions">
                <button type="submit" class="submit-btn">Зарегистрироваться</button>
            </div>

            <div class="form-links">
                <p>Уже есть аккаунт? <a href="/login">Войти в систему</a></p>
            </div>
        </form>
    </div>
</#macro>
</html>