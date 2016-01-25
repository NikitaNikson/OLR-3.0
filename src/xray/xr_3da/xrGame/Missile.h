#pragma once
#include "hud_item_object.h"
#include "HudSound.h"

const u32 MS_HIDDEN = 0;
const u32 MS_SHOWING = 1;
const u32 MS_IDLE = 2;
const u32 MS_THREATEN = 3;
const u32 MS_READY = 4;
const u32 MS_THROW = 5;
const u32 MS_END = 6;
const u32 MS_EMPTY = 7;
const u32 MS_HIDING = 8;
const u32 MS_PLAYING = 9;
const u32 MS_IDLE_SPRINT = 10;
const u32 MS_IDLE_WALK = 11;
const u32 MS_IDLE_WALK_SLOW = 12;

struct dContact;
struct SGameMtl;
class CMissile : public CHudItemObject
{
	friend class CWeaponScript;

	typedef CHudItemObject inherited;
public:
							CMissile					();
	virtual					~CMissile					();

	virtual BOOL			AlwaysTheCrow				()				{ return TRUE; }
	virtual void			OnDrawUI					();

	virtual void			reinit						();
	virtual CMissile*		cast_missile				()				{return this;}

	virtual void 			Load						(LPCSTR section);
	virtual BOOL 			net_Spawn					(CSE_Abstract* DC);
	virtual void 			net_Destroy					();

	virtual void 			UpdateCL					();
	virtual void 			shedule_Update				(u32 dt);

	virtual void 			OnH_A_Chield				();
	virtual void 			OnH_B_Independent			(bool just_before_destroy);

	virtual void 			OnEvent						(NET_Packet& P, u16 type);

	virtual void 			OnAnimationEnd				(u32 state);

	virtual void 			Show();
	virtual void 			Hide();
	virtual bool 			IsHidden					() const {return GetState() == MS_HIDDEN;}
	virtual bool 			IsHiding					() const {return GetState() == MS_HIDING;}
	virtual bool 			IsShowing					() const {return GetState() == MS_SHOWING;}
	virtual void			SilentHide					()	{OnStateSwitch(MS_HIDDEN);}

	virtual void 			Throw();
	virtual void 			Destroy();

	virtual bool 			Action						(s32 cmd, u32 flags);

//.	IC u32		 			State						()				{return m_state;}
	virtual void 			State						(u32 state);
	virtual void 			OnStateSwitch				(u32 S);
	virtual void			GetBriefInfo				(xr_string& str_name, xr_string& icon_sect_name, xr_string& str_count);

protected:
	virtual void			UpdateFireDependencies_internal	();
	virtual void			UpdateXForm						();
	void					UpdatePosition					(const Fmatrix& trans);
	void					spawn_fake_missile				();

	//������������� ���� ���� � �������� ����� ��� �������� �� OnH_B_Chield
	virtual void			OnActiveItem		();
	virtual void			OnHiddenItem		();

	//��� ����
	virtual void			StartIdleAnim		();
	virtual void			net_Relcase			(CObject* O );
protected:

	bool					m_throw;
	
	//����� �����������
	u32						m_dwDestroyTime;
	u32						m_dwDestroyTimeMax;

	Fvector					m_throw_direction;
	Fmatrix					m_throw_matrix;

	CMissile				*m_fake_missile;

	//��������� ������
	
	float m_fMinForce, m_fConstForce, m_fMaxForce, m_fForceGrowSpeed;
//private:
	bool					m_constpower;
	float					m_fThrowForce;
protected:
	//������������� ����� � ����������� ������ �������
	Fvector					m_vThrowPoint;
	Fvector					m_vThrowDir;
	//��� HUD
	Fvector					m_vHudThrowPoint;
	Fvector					m_vHudThrowDir;

	//����� ��������
	shared_str				m_sAnimShow;
	shared_str				m_sAnimHide;
	shared_str				m_sAnimIdle;
	shared_str				m_sAnimIdleSprint;
	shared_str				m_sAnimIdleWalk;
	shared_str				m_sAnimIdleWalkSlow;
	shared_str				m_sAnimPlaying;
	shared_str				m_sAnimThrowBegin;
	shared_str				m_sAnimThrowIdle;
	shared_str				m_sAnimThrowAct;
	shared_str				m_sAnimThrowEnd;

	//���� �������� "�������"
	HUD_SOUND				sndPlaying;

	u32						idle_state();
protected:
			void			setup_throw_params		();
public:
	virtual void			activate_physic_shell	();
	virtual void			setup_physic_shell		();
	virtual void			create_physic_shell		();
	IC		void			set_destroy_time		(u32 delta_destroy_time) {m_dwDestroyTime = delta_destroy_time + Device.dwTimeGlobal;}

protected:
	u32						m_ef_weapon_type;

public:
	virtual u32				ef_weapon_type			() const;
	IC		u32				destroy_time			() const {return m_dwDestroyTime;};
	static	void			ExitContactCallback		(bool& do_colide,bool bo1,dContact& c,SGameMtl * /*material_1*/,SGameMtl * /*material_2*/);
	virtual u16				bone_count_to_synchronize	() const;
};