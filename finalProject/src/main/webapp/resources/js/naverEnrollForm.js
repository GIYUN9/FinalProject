function checkSelectAll()  {
        // 전체 체크박스
        const checkboxes 
        = document.querySelectorAll('input[name="category"]');
        // 선택된 체크박스
        const checked 
        = document.querySelectorAll('input[name="category"]:checked');
        // select all 체크박스
        const selectAll 
        = document.querySelector('input[name="selectall"]');
        
        if(checkboxes.length === checked.length)  {
        selectAll.checked = true;
        }else {
        selectAll.checked = false;
        }
}
