<!DOCTYPE html>
<html lang="en">
<#include "base.ftl">
<#macro title>Профиль пользователя</#macro>
<#macro scripts></#macro>
<#macro content>
    <div class="profile-container">
        <h2>Добро пожаловать в личный кабинет</h2>

        <div class="user-info">
            <div class="info-item">
                <span class="label">Имя пользователя:</span>
                <span class="value">${user}</span>
            </div>

            <div class="info-item">
                <span class="label">ID сессии:</span>
                <span class="value">${sessionId}</span>
            </div>

            <div class="info-item">
                <span class="label">Пользователь из cookie:</span>
                <span class="value">${cookieUser}</span>
            </div>
        </div>

        <div class="status-message">
            <p>✅ Авторизация выполнена успешно</p>
        </div>

        <div class="navigation-links">
            <a href="/" class="nav-link">Вернуться на главную страницу</a>
        </div>
    </div>
</#macro>
</html>