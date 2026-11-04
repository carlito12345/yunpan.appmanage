.class public final Ls1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lr1/d;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lr1/d;->d:Lr1/d;

    iput-object v0, p0, Ls1/c;->b:Lr1/d;

    .line 3
    iput p1, p0, Ls1/c;->a:I

    return-void
.end method

.method public constructor <init>(Ls1/e;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Ls1/e;->a:I

    .line 6
    iput v0, p0, Ls1/c;->a:I

    .line 7
    iget-object v0, p1, Ls1/e;->d:Lr1/d;

    iput-object v0, p0, Ls1/c;->b:Lr1/d;

    .line 8
    iget-boolean p1, p1, Ls1/e;->e:Z

    iput-boolean p1, p0, Ls1/c;->c:Z

    return-void
.end method
