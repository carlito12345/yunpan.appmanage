.class public Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public OutTimeOneMap:I

.field public downLogcat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public isConsistent:Z

.field public isHaveClick:Z

.field public isHaveDoubleClick:Z

.field public isOne:Z

.field public isOpen:Z

.field public isOutTimeOneMap:Z

.field public isWaitingUp:Z

.field public tag_bs:Ljava/lang/String;

.field public upLogcat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zhLogcat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->downLogcat:Ljava/util/List;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->upLogcat:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->zhLogcat:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOpen:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isWaitingUp:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOne:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->OutTimeOneMap:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isOutTimeOneMap:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isConsistent:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveClick:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/KeyMapLogcatSuperFindBean;->isHaveDoubleClick:Z

    .line 28
    .line 29
    return-void
.end method
