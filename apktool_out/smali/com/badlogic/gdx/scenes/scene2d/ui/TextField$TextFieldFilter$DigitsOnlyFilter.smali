.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter$DigitsOnlyFilter;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitsOnlyFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z
    .locals 1
    .param p1, "textField"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .param p2, "c"    # C

    .prologue
    .line 690
    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method
