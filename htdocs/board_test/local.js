function goWrite() {
	f.target = '_self';
	f.action = 'write.php';
	f.submit();
}
function goSave() {
	if(f.txtBstitle.value == ''){
		alert('���� �Է� ����');
		return;
	}
	f.target = '_self';
	f.action = 'save.php';
	f.submit();
}
function goView(bino) {
	f.in_data.value = bino;
	f.target = '_self';
	f.action = 'view.php';
	f.submit();
}
function goList() {
	f.target = '_self';
	f.action = 'list.php';
	f.submit();
}
function goDelete(bino) {
	if(!confirm('���� �Ͻðڽ��ϱ�?')){
		return;
	}
	f.in_data2.value = bino;
	f.target = '_self';
	f.action = 'delete.php';
	f.submit();
}

function dd(){



}