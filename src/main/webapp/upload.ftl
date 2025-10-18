<#include "base.ftl">

<#macro title>Загрузка файлов</#macro>

<#macro scripts></#macro>

<#macro content>
    <div class="upload-container">
        <h2>Загрузка файла</h2>

        <form id="my_form" class="upload-form" method="POST" action="upload" enctype="multipart/form-data">
            <div class="form-group">
                <label for="file-input">Выберите файл для загрузки:</label>
                <input type="file" id="file-input" name="file" class="file-input" required>
            </div>

            <div class="form-actions">
                <button type="submit" class="submit-btn">Загрузить файл</button>
            </div>
        </form>
    </div>
</#macro>