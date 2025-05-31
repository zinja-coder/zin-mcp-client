.class Lde/fgerbig/spacepeng/screens/OptionsScreen$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "OptionsScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/screens/OptionsScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/screens/OptionsScreen;

.field final synthetic val$soundEffectsCheckbox:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen$2;->this$0:Lde/fgerbig/spacepeng/screens/OptionsScreen;

    iput-object p2, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen$2;->val$soundEffectsCheckbox:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 80
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen$2;->val$soundEffectsCheckbox:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked()Z

    move-result v0

    .line 81
    .local v0, "enabled":Z
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->setSoundEnabled(Z)V

    .line 82
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/services/SoundManager;->setEnabled(Z)V

    .line 83
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v2, Lde/fgerbig/spacepeng/assets/SoundKey;->CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 84
    return-void
.end method
