.class public final enum Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
.super Ljava/lang/Enum;
.source "InputEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "touchDown"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 144
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "touchUp"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "touchDragged"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "mouseMoved"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "enter"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 152
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "exit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 154
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "scrolled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 156
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "keyDown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 158
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "keyUp"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 160
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "keyTyped"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method
