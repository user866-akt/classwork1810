<html lang="en">
<#include "base.ftl">
<#macro title>Вход в систему</#macro>
<#macro scripts></#macro>
<#macro content>
    <div id="login_container">
        <#if Session.user?has_content>
            <div class="message">
                <p>Вы уже авторизованы в системе.</p>
                <p><a href="/profile">Перейти в профиль</a></p>
            </div>
        <#else>
            <h2>Авторизация</h2>
            <form method="post" action="/login" class="auth-form">
                <div class="form-group">
                    <label for="login">Логин:</label>
                    <input type="text" id="login" name="login" placeholder="Введите ваш логин" required>
                </div>

                <div class="form-group">
                    <label for="password">Пароль:</label>
                    <input type="password" id="password" name="password" placeholder="Введите ваш пароль" required>
                </div>

                <div class="form-actions">
                    <button type="submit" class="submit-btn">Войти</button>
                </div>

                <div class="form-links">
                    <p>Нет аккаунта? <a href="/sign_up">Зарегистрироваться</a></p>
                </div>
            </form>
        </#if>
    </div>
</#macro>
</html>