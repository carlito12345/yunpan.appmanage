.class public Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isHaveClick:Z

.field public isHaveDoubleClick:Z

.field public isHaveLongClick:Z

.field public isOpen:Z

.field public keyCode:I

.field public ljKey:Z

.field public ljZhKey:Z

.field public pos:I

.field public zhKeyCode:I

.field public zhModeDown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isOpen:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 13
    .line 14
    return-void
.end method
