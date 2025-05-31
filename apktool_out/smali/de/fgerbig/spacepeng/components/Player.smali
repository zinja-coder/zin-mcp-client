.class public Lde/fgerbig/spacepeng/components/Player;
.super Lcom/artemis/Component;
.source "Player.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/components/Player$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVES:I = 0x5

.field public static final SPRITE_NAME:Ljava/lang/String; = "player"

.field public static final SPRITE_NAME_SHIELD:Ljava/lang/String; = "playershield"


# instance fields
.field public lives:I

.field public score:I

.field private state:Lde/fgerbig/spacepeng/components/Player$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 37
    sget-object v0, Lde/fgerbig/spacepeng/components/Player$State;->ALIVE:Lde/fgerbig/spacepeng/components/Player$State;

    iput-object v0, p0, Lde/fgerbig/spacepeng/components/Player;->state:Lde/fgerbig/spacepeng/components/Player$State;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lde/fgerbig/spacepeng/components/Player;->lives:I

    return-void
.end method


# virtual methods
.method public isState(Lde/fgerbig/spacepeng/components/Player$State;)Z
    .locals 1
    .param p1, "state"    # Lde/fgerbig/spacepeng/components/Player$State;

    .prologue
    .line 47
    iget-object v0, p0, Lde/fgerbig/spacepeng/components/Player;->state:Lde/fgerbig/spacepeng/components/Player$State;

    invoke-virtual {v0, p1}, Lde/fgerbig/spacepeng/components/Player$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setState(Lde/fgerbig/spacepeng/components/Player$State;)V
    .locals 0
    .param p1, "state"    # Lde/fgerbig/spacepeng/components/Player$State;

    .prologue
    .line 43
    iput-object p1, p0, Lde/fgerbig/spacepeng/components/Player;->state:Lde/fgerbig/spacepeng/components/Player$State;

    .line 44
    return-void
.end method
