// ������� �������� ���� irregular_event, ������������ ��� �������� �������,
// ������������ � ��������� ��������������
$Pattern { <���_�������> } : irregular_event { [�������_�����������] }
$Relevant_resources
{
	����� ���������� ������� �������, ������� ����� �������������� � �������
	��� ������� ���������� ������������
	��� �������, � ������������ ������� ���������� �������� ��������� ��������, ��������,
	<���_���_�������>: <���_����������_�������> Create
}
$Time = { �������� ����� ��������� }
// ����� $Body ����������� ������������� ��������
$Body
{ <���_������������_�������> }
	Convert_event
	{
		��������� �������. �����������, ����� ������ �����, ������ ��������� ����� ���������
		����� ����������� ��������� ��� ����������� ���. ��������
	}
	
{ <���_������������_�������_2> � �.�. }

$End

// ������� �������� ���� operation, ������������ ��� �������� ��������,
// ������� ��������� ������������
$Pattern { <���_�������> } : operation { [�������_�����������] }
$Relevant_resources
{
	����� ���������� ������� �������, ������� ����� �������������� � �������
	��� ������� ���������� ������������
}
$Time = { ������������ �������� }
// ����� $Body ����������� ������������� ��������
$Body
{ <���_������������_�������> }
	Choice from { <����������_���������>, � ������� �������� ���������� ���. ������ }
	first       { ���� ���. �������� ���������, �� ����� ������ ������ �� ���       }
	Convert_begin
	{
		��������� ������. �����������, ���� <����������_���������> ������� �������� ������
		����� ����������� ��������� ��� ����������� ���. ��������
	}
	Convert_end
	{
		��������� �����. ����������� �� ��������� ������� $Time
	}
	
{ <���_������������_�������_2> � �.�. }

/*
�������:
1. Choice from ��� ���� ���. �������� ����������� ������ ���� � ������������ ���������� �
2. ��������� ���. ������_1 ����� ���� ����������� � Choice from ���������� �� ��� ���. �������_2
3. ��� ���������� ������ ����������� ������������ ������ ����
4. ��� ���������� ����� ����������� ������������ ������ ����
*/

$End
