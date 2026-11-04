.class public Lcom/yunpan/appmanage/bean/CodeEditorTopBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ico:I

.field public name:Ljava/lang/String;

.field public tag:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->name:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 7
    iput v0, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 8
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 11
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    return-void
.end method
