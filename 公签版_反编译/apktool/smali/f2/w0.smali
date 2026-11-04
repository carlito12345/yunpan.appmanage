.class public final Lf2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/b0;


# instance fields
.field public final a:Lua/i8;

.field public final b:La1/d;

.field public final c:Lkh/h;

.field public final d:Lha/j2;

.field public final e:I


# direct methods
.method public constructor <init>(Lua/i8;Ll2/r;)V
    .locals 3

    .line 1
    new-instance v0, La1/d;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p2}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Lkh/h;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {p2, v1}, Lkh/h;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lha/j2;

    .line 14
    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lha/j2;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lf2/w0;->a:Lua/i8;

    .line 24
    .line 25
    iput-object v0, p0, Lf2/w0;->b:La1/d;

    .line 26
    .line 27
    iput-object p2, p0, Lf2/w0;->c:Lkh/h;

    .line 28
    .line 29
    iput-object v1, p0, Lf2/w0;->d:Lha/j2;

    .line 30
    .line 31
    const/high16 p1, 0x100000

    .line 32
    .line 33
    iput p1, p0, Lf2/w0;->e:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lha/l2;)Lf2/b0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Lr1/y;)Lf2/a;
    .locals 9

    .line 1
    iget-object v0, p1, Lr1/y;->b:Lr1/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf2/x0;

    .line 7
    .line 8
    iget-object v3, p0, Lf2/w0;->a:Lua/i8;

    .line 9
    .line 10
    iget-object v4, p0, Lf2/w0;->b:La1/d;

    .line 11
    .line 12
    iget-object v1, p0, Lf2/w0;->c:Lkh/h;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lr1/y;->b:Lr1/v;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lr1/y;->b:Lr1/v;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v5, Lb2/g;->u:Lgf/g;

    .line 28
    .line 29
    iget-object v6, p0, Lf2/w0;->d:Lha/j2;

    .line 30
    .line 31
    iget v7, p0, Lf2/w0;->e:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v1, v0

    .line 35
    move-object v2, p1

    .line 36
    invoke-direct/range {v1 .. v8}, Lf2/x0;-><init>(Lr1/y;Lua/i8;La1/d;Lb2/g;Lha/j2;ILr1/p;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final c(Z)Lf2/b0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(I)Lf2/b0;
    .locals 0

    .line 1
    return-object p0
.end method
