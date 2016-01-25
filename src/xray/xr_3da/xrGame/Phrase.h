///////////////////////////////////////////////////////////////
// Phrase.h
// �����, ����������� ����� (������� �������)
///////////////////////////////////////////////////////////////

#pragma once

#include "PhraseScript.h"


class CPhraseDialog;

class CPhrase {
private:
	friend CPhraseDialog;
public:
	CPhrase(void) {
		m_ID = "";
		m_iGoodwillLevel = 0;
	}
	virtual ~CPhrase(void) {}

	void SetText(LPCSTR text) {
		m_text = text;
	}
	LPCSTR GetText() const {
		return m_text.c_str();
	}

	void SetID(const shared_str& id) {
		m_ID = id;
	}
	const shared_str& GetID() const {
		return m_ID;
	}
	LPCSTR GetIDStr() const {
		return m_ID.c_str();
	}

	int GoodwillLevel()	const {
		return m_iGoodwillLevel;
	}

	bool IsDummy()	const {
		return ( xr_strlen(GetText()) == 0 );
	}
	CPhraseScript* GetPhraseScript() {
		return &m_PhraseScript;
	};

protected:
	//���������� ������ � ������ ���� �������
	shared_str m_ID;
	//��������� ������������� �����
	xr_string m_text;
	
	//����������� ������� ���������������, ����������� ��� ����
	//���� ����� ����� ���� �������
	int m_iGoodwillLevel;
	
	//��� ������ ���������� �������
	CPhraseScript m_PhraseScript;
};

