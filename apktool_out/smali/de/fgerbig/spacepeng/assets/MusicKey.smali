.class public final enum Lde/fgerbig/spacepeng/assets/MusicKey;
.super Ljava/lang/Enum;
.source "MusicKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/assets/MusicKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/assets/MusicKey;

.field public static final enum GAME:Lde/fgerbig/spacepeng/assets/MusicKey;

.field public static final enum MENU:Lde/fgerbig/spacepeng/assets/MusicKey;


# instance fields
.field private final key:Ljava/lang/String;

.field private music:Lcom/badlogic/gdx/audio/Music;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lde/fgerbig/spacepeng/assets/MusicKey;

    const-string v1, "MENU"

    const-string v2, "music/menu.ogg"

    invoke-direct {v0, v1, v3, v2}, Lde/fgerbig/spacepeng/assets/MusicKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/MusicKey;->MENU:Lde/fgerbig/spacepeng/assets/MusicKey;

    .line 24
    new-instance v0, Lde/fgerbig/spacepeng/assets/MusicKey;

    const-string v1, "GAME"

    const-string v2, "music/game.ogg"

    invoke-direct {v0, v1, v4, v2}, Lde/fgerbig/spacepeng/assets/MusicKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/assets/MusicKey;->GAME:Lde/fgerbig/spacepeng/assets/MusicKey;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lde/fgerbig/spacepeng/assets/MusicKey;

    sget-object v1, Lde/fgerbig/spacepeng/assets/MusicKey;->MENU:Lde/fgerbig/spacepeng/assets/MusicKey;

    aput-object v1, v0, v3

    sget-object v1, Lde/fgerbig/spacepeng/assets/MusicKey;->GAME:Lde/fgerbig/spacepeng/assets/MusicKey;

    aput-object v1, v0, v4

    sput-object v0, Lde/fgerbig/spacepeng/assets/MusicKey;->$VALUES:[Lde/fgerbig/spacepeng/assets/MusicKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lde/fgerbig/spacepeng/assets/MusicKey;->key:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/assets/MusicKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/assets/MusicKey;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/assets/MusicKey;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lde/fgerbig/spacepeng/assets/MusicKey;->$VALUES:[Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/assets/MusicKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/assets/MusicKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lde/fgerbig/spacepeng/assets/MusicKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Lcom/badlogic/gdx/audio/Music;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/fgerbig/spacepeng/assets/MusicKey;->music:Lcom/badlogic/gdx/audio/Music;

    return-object v0
.end method

.method public setMusic(Lcom/badlogic/gdx/audio/Music;)V
    .locals 0
    .param p1, "music"    # Lcom/badlogic/gdx/audio/Music;

    .prologue
    .line 46
    iput-object p1, p0, Lde/fgerbig/spacepeng/assets/MusicKey;->music:Lcom/badlogic/gdx/audio/Music;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lde/fgerbig/spacepeng/assets/MusicKey;->key:Ljava/lang/String;

    return-object v0
.end method
