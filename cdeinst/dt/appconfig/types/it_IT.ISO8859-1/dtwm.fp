# $TOG: dtwm.fp.src /main/8 1998/11/02 10:49:54 mgreess $
# ##########################################################################
# 
#   dtwm.fp
# 
#   This file contains a full definition for the default front panel.
# 
#   (c) Copyright 1993, 1994, 1995 Hewlett-Packard Company
#   (c) Copyright 1993, 1994, 1995 International Business Machines Corp.
#   (c) Copyright 1993, 1994, 1995 Sun Microsystems, Inc.
#   (c) Copyright 1993, 1994, 1995 Novell, Inc.
# 
# ##########################################################################
set DtDbVersion=1.0

PANEL FrontPanel
{
  DISPLAY_HANDLES	 True
  DISPLAY_MENU		 True
  DISPLAY_MINIMIZE	 True
  CONTROL_BEHAVIOR	 single_click
  DISPLAY_CONTROL_LABELS False
  HELP_TOPIC		 FPOnItemFrontPanel
  HELP_VOLUME		 FPanel
}


BOX Top
{
  CONTAINER_NAME	FrontPanel
  POSITION_HINTS	first
  HELP_TOPIC		FPOnItemBox
  HELP_VOLUME		FPanel
}


CONTROL Clock
{
  TYPE			clock
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	1
  ICON                  Fpclock
  LABEL                 Orologio
  HELP_TOPIC		FPOnItemClock
  HELP_VOLUME		FPanel
}

CONTROL Date
{
  TYPE			date
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	2
  ICON			FpCM
  LABEL                 Agenda
  DATE_FORMAT		%b%n%e
  PUSH_ACTION		Dtcm
  PUSH_RECALL		True
  DROP_ACTION		DtcmInsert
  CLIENT_NAME		dtcm
  HELP_TOPIC		FPOnItemDate
  HELP_VOLUME		FPanel
}

CONTROL Home
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	3
  ICON			Fphome
  LABEL			Cartella iniziale
  PUSH_ACTION		DtfileHome
  DROP_ACTION		Dtfile
  HELP_TOPIC		FPOnItemHome
  HELP_VOLUME		FPanel
}


CONTROL TextEditor
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	4
  ICON			Fppenpd
  LABEL			Editor di testo
  PUSH_ACTION		TextEditor
  DROP_ACTION		TextEditor
  HELP_TOPIC		FPOnItemTextEditor
  HELP_VOLUME		FPanel
}


CONTROL Mail
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	5
  ICON			DtMail
  LABEL                 Posta
  ALTERNATE_ICON	DtMnew
  MONITOR_TYPE		mail
  DROP_ACTION       	ComposeOrOpen
  PUSH_ACTION		Dtmail
  PUSH_RECALL		false
  CLIENT_NAME		dtmail
  HELP_TOPIC		FPOnItemMail
  HELP_VOLUME		FPanel
}



CONTROL Blank1
{
  TYPE			blank
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	6
  ICON			Fpblank
  HELP_TOPIC		FPOnItemFrontPanel
  HELP_VOLUME		FPanel
}

CONTROL Blank2
{
  TYPE			blank
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	8
  ICON			Fpblank
  HELP_TOPIC		FPOnItemFrontPanel
  HELP_VOLUME		FPanel
}



CONTROL Printer
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	9
  LABEL			Stampante predefinita
  ICON			Fpprnt
  PUSH_ACTION		DtPrint
  DROP_ACTION		DtPrint
  DROP_ANIMATION	PrinterDrop
  HELP_TOPIC		FPOnItemPrinter
  HELP_VOLUME		FPanel
}


CONTROL Style
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	10
  LABEL                 Stile del desktop
  ICON                  Fpstyle
  PUSH_ACTION		Dtstyle
  PUSH_RECALL		true
  CLIENT_NAME		dtstyle
  HELP_TOPIC		FPOnItemStyle
  HELP_VOLUME		FPanel
}


CONTROL Applications
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	11
  ICON			Fpapps
  LABEL			Applicazioni
  PUSH_ACTION		Dtappmgr
  HELP_TOPIC		FPOnItemAppMgr
  HELP_VOLUME		FPanel
}


CONTROL Help
{
  TYPE                  icon
  CONTAINER_NAME        Top
  CONTAINER_TYPE        BOX
  POSITION_HINTS        12
  ICON                  Fphelp
  LABEL                 Gestione dell'aiuto
  PUSH_ACTION           Dthelpview
  DROP_ACTION           Dthelpview
  HELP_TOPIC            FPOnItemHelpMgr
  HELP_VOLUME           FPanel
}

CONTROL Trash
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	13
  ICON			Fptrsh
  LABEL			Cestino
  ALTERNATE_ICON	Fptrsh7
  FILE_NAME		$HOME/.dt/Trash/.trashinfo
  MONITOR_TYPE		file
  PUSH_ACTION		Trash
  DROP_ACTION		Trash
  DROP_ANIMATION	TrashDrop
  HELP_TOPIC		FPOnItemTrash
  HELP_VOLUME		FPanel
}


SWITCH           Switch
{
  CONTAINER_NAME	Top
  POSITION_HINTS	7
  NUMBER_OF_ROWS	2
  HELP_TOPIC		FPOnItemSwitch
  HELP_VOLUME		FPanel
}



CONTROL Lock
{
  TYPE			icon
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	1
  ICON			Fplock
  LABEL			Blocco dello schermo
  PUSH_ACTION		LockDisplay
  HELP_TOPIC		FPOnItemLock
  HELP_VOLUME		FPanel
}


CONTROL Busy
{
  TYPE			busy
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	2
  ICON			Fplite
  ALTERNATE_ICON	FpliteY
  LABEL			Sistema occupato
  HELP_TOPIC		FPOnItemBusy
  HELP_VOLUME		FPanel
}


CONTROL Blank
{
  TYPE			blank
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	3
  ICON			FpblnkS
  HELP_TOPIC		FPOnItemSwitch
  HELP_VOLUME		FPanel
}


CONTROL Exit
{
  TYPE			icon
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	4
  ICON			Fpexit
  LABEL			Uscita
  PUSH_ACTION		ExitSession
  HELP_TOPIC		FPOnItemExit
  HELP_VOLUME		FPanel
}

SUBPANEL PersAppsSubpanel
{
  CONTAINER_NAME	TextEditor
  TITLE			Applicazioni personali
}

CONTROL Term
{
  TYPE			icon
  CONTAINER_NAME	PersAppsSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	1
  ICON			Fpterm
  LABEL			Terminale
  PUSH_ACTION		Terminal
  HELP_TOPIC		FPOnItemTerm
  HELP_VOLUME		FPanel
}

CONTROL IconEditor
{
  TYPE			icon
  CONTAINER_NAME	PersAppsSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	2
  ICON			Dtpaint
  LABEL			Editor delle icone
  PUSH_ACTION		Dticon
  DROP_ACTION		Dticon
  HELP_TOPIC		FPOnItemIconEditor
  HELP_VOLUME		FPanel
}

SUBPANEL PersPrintersSubpanel
{
   CONTAINER_NAME	Printer
   TITLE		Stampanti personali
}

CONTROL PrintManager
{
  TYPE			icon
  CONTAINER_NAME	PersPrintersSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	1
  ICON			FpPrtmg
  LABEL			Gestione della stampa
  PUSH_ACTION		DtPrintManager
  DROP_ACTION		DtPrint
  DROP_ANIMATION	PrinterDrop
  HELP_TOPIC		_hometopic
  HELP_VOLUME		Printmgr
}








SUBPANEL HelpSubpanel
{
  CONTAINER_NAME        Help
  TITLE                 Aiuto
}


CONTROL HelpOverview
{
  TYPE			icon



  CONTAINER_NAME        HelpSubpanel

  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	1
  ICON			Dthover
  LABEL			Introduzione al desktop
  PUSH_ACTION		OpenDtIntro
  HELP_TOPIC		FPOnItemDtIntro
  HELP_VOLUME		FPanel
}

CONTROL FPHelp
{
  TYPE			icon



  CONTAINER_NAME	HelpSubpanel

  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	2
  ICON			Fpfphlp
  LABEL			Aiuto del pannello principale
  PUSH_ACTION		FPHelp
  HELP_TOPIC		FPOnItemFPHelp
  HELP_VOLUME		FPanel
}


# 
#  OnItem help uses a pseudo push action FPOnItemHelp.  Dtwm is looking for
#  an exact match on this push action string.  Do not localize this push 
#  action.
# 

CONTROL OnItem
{
  TYPE			icon
  CONTAINER_NAME	InfoManagerSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	4
  ICON			DthonFP
  LABEL			Aiuto sull'elemento
  PUSH_ACTION		FPOnItemHelp
  HELP_TOPIC		FPOnItemOnItem
  HELP_VOLUME		FPanel
}

ANIMATION TrashDrop
{
   ANIMATION	Fptrsh1		100
   ANIMATION	Fptrsh2		200
   ANIMATION	Fptrsh3		100
   ANIMATION	Fptrsh4
   ANIMATION	Fptrsh5		800
   ANIMATION	Fptrsh6		200
   ANIMATION	Fptrsh7
   ANIMATION	Fptrsh
}

ANIMATION PrinterDrop
{
   ANIMATION	Fpprnt1		100
   ANIMATION	Fpprnt2		100
   ANIMATION	Fpprnt3		100
   ANIMATION	Fpprnt4		100
   ANIMATION	Fpprnt5		100
   ANIMATION	Fpprnt6		100
   ANIMATION	Fpprnt7		100
   ANIMATION	Fpprnt8		100
   ANIMATION	Fpprnt9		100
   ANIMATION	FpprntA		100
   ANIMATION	FpprntB		800
}

