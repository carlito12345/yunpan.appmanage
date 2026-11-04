.class public final synthetic Lha/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/p2;


# instance fields
.field public final synthetic a:Lha/ed;


# direct methods
.method public synthetic constructor <init>(Lha/ed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/cd;->a:Lha/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/cd;->a:Lha/ed;

    .line 2
    .line 3
    iput-object p1, v0, Lha/ed;->h:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, v0, Lha/ed;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, v0, Lha/ed;->j:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
