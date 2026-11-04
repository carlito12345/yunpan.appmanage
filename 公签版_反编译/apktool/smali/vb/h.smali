.class public final synthetic Lvb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/q;


# instance fields
.field public final synthetic a:Lvb/k;

.field public final synthetic b:Lte/l;


# direct methods
.method public synthetic constructor <init>(Lvb/k;Lte/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/h;->a:Lvb/k;

    iput-object p2, p0, Lvb/h;->b:Lte/l;

    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lvb/h;->a:Lvb/k;

    .line 2
    .line 3
    iget-object v0, p0, Lvb/h;->b:Lte/l;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lte/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Lvb/k;->f()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
