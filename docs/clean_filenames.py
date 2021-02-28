from pathlib import Path
import shutil


cad_path = Path(".", "cad")


for variant_dir in cad_path.iterdir():
    for type_dir in variant_dir.iterdir():
        if type_dir.parts[-1].lower() in ("step", 'stl'):
            for part_file in type_dir.iterdir():
                new_name = part_file.name.split(" - ")[-1]
                new_parts = list(part_file.parts[:-1])
                new_parts.append(new_name)
                part_file.rename(Path(*new_parts))
                print(str(part_file) + " -> " + str(Path(*new_parts)))
