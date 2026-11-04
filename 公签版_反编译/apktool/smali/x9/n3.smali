.class public final Lx9/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/AppBean;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lx9/n3;->c:Z

    .line 13
    iput-boolean v0, p0, Lx9/n3;->d:Z

    .line 14
    iget-object v0, p1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lx9/n3;->a:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    iput-object v0, p0, Lx9/n3;->b:Ljava/lang/String;

    .line 16
    iget-boolean p1, p1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    iput-boolean p1, p0, Lx9/n3;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lx9/n3;->c:Z

    .line 3
    iput-boolean v0, p0, Lx9/n3;->d:Z

    .line 4
    iput-object p1, p0, Lx9/n3;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lx9/n3;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lx9/n3;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lx9/n3;->b:Ljava/lang/String;

    .line 9
    iput-boolean p3, p0, Lx9/n3;->c:Z

    .line 10
    iput-boolean p4, p0, Lx9/n3;->d:Z

    return-void
.end method
