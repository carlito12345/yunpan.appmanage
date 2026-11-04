.class public Lcom/yunpan/appmanage/bean/SidebarCheckBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public checked:Z

.field public name:Ljava/lang/String;

.field public size:I

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/yunpan/appmanage/bean/SidebarCheckBean;->size:I

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/yunpan/appmanage/bean/SidebarCheckBean;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/SidebarCheckBean;->name:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/yunpan/appmanage/bean/SidebarCheckBean;->checked:Z

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/SidebarCheckBean;->type:I

    return-void
.end method
