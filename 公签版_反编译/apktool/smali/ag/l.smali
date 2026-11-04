.class public final Lag/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lag/c;

.field public c:Lag/d;

.field public d:Lag/i;

.field public e:Lag/j;

.field public f:Z

.field public g:Ljava/io/File;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lag/l;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lag/c;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lag/c;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lag/l;->b:Lag/c;

    .line 23
    .line 24
    new-instance v0, Lag/d;

    .line 25
    .line 26
    invoke-direct {v0}, Lag/d;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lag/l;->c:Lag/d;

    .line 30
    .line 31
    new-instance v0, Lag/i;

    .line 32
    .line 33
    invoke-direct {v0}, Lag/i;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lag/l;->d:Lag/i;

    .line 37
    .line 38
    new-instance v0, Lag/j;

    .line 39
    .line 40
    invoke-direct {v0}, Lag/j;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lag/l;->e:Lag/j;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lag/l;->h:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
